package com.wecamp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.service.search.SearchService;
import com.wecamp.setting.WebTitle;
import com.wecamp.vo.SearchResultVo;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("search")
public class SearchController {
	@Autowired
	private SearchService searchService;
	
	@PostMapping("camp_detail.wcc")
	private String campDetail() {
		String campName = "캠핑장이름";
		// control logic  
		return "client/search/camp_detail/"+WebTitle.TITLE+campName;
	}
	
	//String checkIn, String checkOut, String peopleNum 고민해야함(Session?)
	@PostMapping("search.wcc")
	private ModelAndView search(String searchPlace, String checkIn, String checkOut, String peopleNum, HttpSession session, HttpServletRequest request) {
		SearchResultVo result = searchService.searchCampList(searchPlace, false, session, request);
		ModelAndView response = new ModelAndView("client/search/tests_response_data");
		response.addObject("vo", result);
		return response;
	}
}
