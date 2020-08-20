package com.wecamp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.PostMapping;

import com.wecamp.service.campDetail.CampDetailService;
import com.wecamp.service.search.SearchService;
import com.wecamp.setting.WebTitle;
import com.wecamp.vo.SearchResultVo;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("search")
public class SearchController {
	@Autowired
	CampDetailService cdService;
	@Autowired 
	private SearchService searchService;
	
	@GetMapping("camp_detail.wcc")
	private ModelAndView campDetail(int camp_idx) {
		
		ModelAndView mv = cdService.campDetail(camp_idx);
		/*
			  for(int i=0; i<sortName.size(); i++){//2
			  	    for(List<String> sortListA : sortNameList[i]) {
				  		System.out.println(sortListA);//카라반
				  
				  	for(List<Sort> list : list[i]){
				  		for(Sort sort : list){
				  			if(sortName==sort.sort_name){
				  				System.out.println(sort);
				  				System.out.println(sort.site_name); 
				  			}
				  		}
				 		
				  	} 
				  } 
			  }
		 */
		
		return mv;
	}
	
	
	@PostMapping("camp_detail.wcc")
	private String campDetail() {
		String campName = "캠핑장이름";
		// control logic  
		return "client/search/camp_detail/"+WebTitle.TITLE+campName;
	}
	
	//String checkIn, String checkOut, String peopleNum 고민해야함(Session?)
	@GetMapping("search.wcc")
	private ModelAndView search(String searchPlace, String checkIn, String checkOut, String peopleNum, HttpSession session, HttpServletRequest request) {
		session.setAttribute("cp", 1);
		SearchResultVo result = searchService.searchCampList(searchPlace, false, session, request);
		ModelAndView response = new ModelAndView("client/result/map");
		response.addObject("vo", result);
		return response;
	}
	
	@PostMapping("loadMore.wcc")
	private ModelAndView loadMore(String searchPlace, String checkIn, String checkOut, String peopleNum, HttpSession session, HttpServletRequest request) {
		
		int cp = Integer.parseInt(session.getAttribute("cp").toString()); 
		cp = cp + 1;
		session.setAttribute("cp", cp);
		SearchResultVo result = searchService.searchCampList(searchPlace, true, session, request);
		ModelAndView response = new ModelAndView("client/result/mapList");
		if(result!=null) {
			response.addObject("vo", result);
		}else {
			response = new ModelAndView();
		}
		return response;
	}
}
