package com.wecamp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.Camp;
import com.wecamp.model.Img;
import com.wecamp.model.Sort;
import com.wecamp.service.CampDetailService;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("search")
public class SearchController {
	@Autowired
	CampDetailService cdService;
	
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
	
}
