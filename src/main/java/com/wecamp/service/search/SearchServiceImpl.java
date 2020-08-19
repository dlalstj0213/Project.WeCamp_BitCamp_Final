package com.wecamp.service.search;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.wecamp.mapper.SearchMapper;
import com.wecamp.model.CampAndImg;
import com.wecamp.utils.PageUtil;
import com.wecamp.utils.StarUtil;
import com.wecamp.vo.Pagination;
import com.wecamp.vo.SearchResultVo;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
class SearchServiceImpl implements SearchService{
	private SearchMapper searchMapper;
	
	@Override
	public SearchResultVo searchCampList(String searchPlace, boolean isMore, HttpSession session, HttpServletRequest request) {
		String cpStr = Integer.toString((Integer)session.getAttribute("cp"));
		//String psStr = (String)session.getAttribute("ps");
		
		if(isMore == false) {
			session.removeAttribute("cp");
			session.removeAttribute("ps");
		}
		
		PageUtil pageUtil = new PageUtil();
		int currentPage = pageUtil.getCurrentPageSession(cpStr, session);
		int pageSize = pageUtil.getPageSize("2", session); // 테스팅중~
		int listCount = searchMapper.selectCountCamp();
		Pagination page = new Pagination(listCount, currentPage, pageSize);
		
		HashMap<String, Object> query = new HashMap<String, Object>();
		query.put("search", searchPlace.trim());
		query.put("page", page);
		List<CampAndImg> list = searchMapper.selectSearchedListOfCamp(query);
		
		StarUtil starUtil = new StarUtil();
		for(CampAndImg ci : list) {
			long minFee = searchMapper.selectMinFeeOfCamp(ci.getCamp_idx());
			Float avgStar = searchMapper.selectAverageStar(ci.getCamp_idx());
			if(avgStar == null) avgStar = 0.0f;
			
			String fname = ci.getFname().trim();
			ci.setFname(fname);
			ci.setMin_fee(minFee);
			ci.setAvgStar(avgStar);
			ci.setFullStarNum(starUtil.getFullStarNumber(avgStar));
			ci.setEmptyStarNum(starUtil.getEmptyStarNumber(avgStar));
			ci.setHalfStarExist(starUtil.checkHalfStar(avgStar));
		}

		
		return new SearchResultVo(list, page);
	}
}
