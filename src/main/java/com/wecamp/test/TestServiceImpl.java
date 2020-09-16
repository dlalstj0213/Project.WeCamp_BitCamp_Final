package com.wecamp.test;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.mapper.TestMapper;
import com.wecamp.model.BookingAndCamp;
import com.wecamp.model.Member;
import com.wecamp.utils.DateUtil;
import com.wecamp.utils.PageUtil;
import com.wecamp.vo.Pagination;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class TestServiceImpl implements TestService{
	@Autowired
	TestMapper mapper;
	@Autowired
	HttpSession session;
	
	@Override
	public ModelAndView getBookingRecordsService(String cpStr, boolean isMore, String search, String keyword, String category) {
		ModelAndView response = new ModelAndView();
		
		Member user = (Member)session.getAttribute("member");
		Integer camp_idx = mapper.selectCampIdx(user.getEmail());
		
		PageUtil pageUtil = new PageUtil();
		if(!isMore) {
			session.removeAttribute("cp");
			cpStr = null;
		}
		int currentPage = pageUtil.getCurrentPageSession(cpStr, session);
		int pageSize = pageUtil.getPageSize("3", session);
		
		if(camp_idx != null){
			HashMap<String, Object> query = new HashMap<String, Object>();
			DateUtil dateUtil = new DateUtil();
			String today = dateUtil.getToday();
			query.put("camp_idx", camp_idx);
			query.put("today", today);
			query.put("search", search);
			query.put("category", category);
			query.put("keyword", keyword);
			long listCount = mapper.selectCountBookingList(query);
			Pagination paging = new Pagination(listCount, currentPage, pageSize);
			if(listCount == 0) return response;
			query.put("page", paging);
			List<BookingAndCamp> list = mapper.selectBookingList(query);
			
			response.addObject("list", list);
			response.addObject("page", paging);
			response.addObject("using", mapper.selectCountUsingStateAsU(query));
			response.addObject("notUsing", mapper.selectCountUsingStateAsF(query));
			response.addObject("endUsing", mapper.selectCountUsingStateAsT(query));
		}
		return response;
	}

	@Override
	public boolean usingCampService(String imp_uid, String action) {
		HashMap<String, Object> query= new HashMap<String, Object>();
		query.put("imp_uid", imp_uid);
		query.put("action", action);
		return mapper.updateUsingState(query);
	}
}
