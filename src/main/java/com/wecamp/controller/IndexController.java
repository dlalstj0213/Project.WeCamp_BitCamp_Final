package com.wecamp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.CampAndEtc;
import com.wecamp.service.index.BestCampService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class IndexController {
	
	@Autowired
	BestCampService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	private ModelAndView index(HttpSession session) {
		ModelAndView mv = new ModelAndView("index");
		List<CampAndEtc> camp = service.selectCampAndEtcS();
		mv.addObject("bestCamp", camp);
		return mv;
	}
	
}
