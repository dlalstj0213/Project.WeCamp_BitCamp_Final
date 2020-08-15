package com.wecamp.service.search;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.wecamp.mapper.SearchMapper;
import com.wecamp.model.CampAndImg;
import com.wecamp.utils.PageUtil;
import com.wecamp.vo.Pagination;
import com.wecamp.vo.SearchResultVo;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
class SearchServiceImpl implements SearchService{
	private SearchMapper searchMapper;
	
	@Override
	public SearchResultVo searchCampList(String searchPlace, boolean isMore, HttpSession session, HttpServletRequest request) {
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		
		if(isMore == false) {
			session.removeAttribute("cp");
			session.removeAttribute("ps");
		}
		
		PageUtil pageUtil = new PageUtil();
		int currentPage = pageUtil.getCurrentPageSession(cpStr, session);
		int pageSize = pageUtil.getCurrentPageSession(psStr, session);
		int listCount = searchMapper.selectCountCamp();
		Pagination page = new Pagination(listCount, currentPage, pageSize);
		
		HashMap<String, Object> query = new HashMap<String, Object>();
		query.put("search", searchPlace.trim());
		query.put("page", page);
		List<CampAndImg> list = searchMapper.selectSearchedListOfCamp(query);
		
		for(CampAndImg ci : list) {
			long minFee = searchMapper.selectMinFeeOfCamp(ci.getCamp_idx());
			ci.setMin_fee(minFee);
		}
		
		return new SearchResultVo(list, page);
	}
}
