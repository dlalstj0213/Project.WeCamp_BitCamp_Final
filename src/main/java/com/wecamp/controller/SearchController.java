package com.wecamp.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.PostMapping;

import com.wecamp.model.Review;
import com.wecamp.service.campDetail.CampDetailService;
import com.wecamp.service.search.SearchService;
import com.wecamp.setting.WebTitle;
import com.wecamp.utils.DateUtil;
import com.wecamp.vo.ChartVo;
import com.wecamp.vo.Pagination;
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
	@Autowired
	private HttpSession session;

	@GetMapping("camp_detail.wcc")
	private ModelAndView campDetail(String camp_idx, String checkIn, String checkOut, String peopleNum, String nextPage) {
		ModelAndView mv = new ModelAndView();
		if(camp_idx==null||checkIn==null||checkOut==null||peopleNum.equals("")){
			DateUtil du = new DateUtil();
			
			checkIn=du.getToday();
			checkOut=du.getTommorrow();
			peopleNum="0";
			
			mv.setViewName("redirect:camp_detail.wcc?camp_idx="+Integer.parseInt(camp_idx)+"&checkIn="+checkIn+"&checkOut="+checkOut+"&peopleNum="+peopleNum);
			return mv;
		}
		mv = cdService.campDetail(Integer.parseInt(camp_idx));
		mv = cdService.selectReviewS(Integer.parseInt(camp_idx), false, session, mv, nextPage);
		mv.addObject("checkIn", checkIn);
		mv.addObject("checkOut", checkOut);
		mv.addObject("peopleNum", peopleNum);
		return mv;
	}

	
	@PostMapping("loadMore.wcc")
	private ModelAndView loadMore(String camp_idx, String nextPage) {
	  
		ModelAndView mv = new ModelAndView("client/search/review_page");
		mv = cdService.selectReviewS(Integer.parseInt(camp_idx), true, session, mv, nextPage);
		return mv;
	}
	

	//String checkIn, String checkOut, String peopleNum 고민해야함(Session?)
	@GetMapping("search.wcc")
	private ModelAndView search(String searchPlace, String checkIn, String checkOut, String peopleNum, HttpSession session, HttpServletRequest request) {

		session.setAttribute("cp", 1);
		SearchResultVo result = searchService.searchCampList(searchPlace, false, session, request);
		ModelAndView response = new ModelAndView("client/result/map");
		response.addObject("vo", result);
		response.addObject("checkIn", checkIn);
		response.addObject("checkOut", checkOut);		
		response.addObject("peopleNum", peopleNum);		
		response.addObject("searchPlace", searchPlace);		
		return response;
	}


//	@PostMapping("loadMore.wcc")
//	private ModelAndView loadMore(String searchPlace, HttpSession session, HttpServletRequest request) {
//
//		int cp = Integer.parseInt(session.getAttribute("cp").toString());
//		cp = cp +1;
//		session.setAttribute("cp", cp); 
//		SearchResultVo result = searchService.searchCampList(searchPlace, true, session, request);
//		ModelAndView response = new ModelAndView("client/result/mapList");
//		if(result!=null) { 
//			response.addObject("vo", result); 
//		}else {
//			response = new ModelAndView(); 
//		} 
//		return response; 
//	}

}


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