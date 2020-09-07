package com.wecamp.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.PostMapping;
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
	  
		ModelAndView mv = new ModelAndView("client/camp/review_page");
		mv = cdService.selectReviewS(Integer.parseInt(camp_idx), true, session, mv, nextPage);
		return mv;
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