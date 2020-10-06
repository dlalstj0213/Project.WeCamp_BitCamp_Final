package com.wecamp.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.service.campDetail.CampDetailService;
import com.wecamp.utils.DateUtil;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("camp")
public class CampDetailController {
	@Autowired
	CampDetailService cdService;
	@Autowired
	private HttpSession session;

	@GetMapping("camp_detail.wcc")
	private ModelAndView campDetail(String camp_idx, String checkIn, String checkOut, String peopleNum, String nextPage) {
		ModelAndView mv = new ModelAndView();
		if(camp_idx==null||checkIn==null||checkOut==null||peopleNum.equals("")){
			DateUtil du = new DateUtil();
			
			checkIn=du.getToday();
			checkOut=du.getTommorrow();
			peopleNum="1";
			
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
	  
		ModelAndView mv = new ModelAndView("client/camp/review_page");
		mv = cdService.selectReviewS(Integer.parseInt(camp_idx), true, session, mv, nextPage);
		return mv;
	}
	
	//@ResponseBody
	@PostMapping("tourist")
	private ModelAndView  getTourist(double x, double y) {
		//TouristVo touristVo cdService.getTourists(x, y);
		ModelAndView mv= cdService.getTourists(x, y);
		return mv;
		//return touristVo;
	}
	@PostMapping("check_dates")
	@ResponseBody
	private HashMap<String, Object> checkDates(@RequestBody HashMap<String, Object> request) {
		return cdService.checkDatesService(request);
	}
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