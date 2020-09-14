package com.wecamp.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.CampAndEtc;
import com.wecamp.model.Member;
import com.wecamp.service.index.BestCampService;
import com.wecamp.service.member.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class IndexController {
	
	@Autowired
	private BestCampService service;
	@Autowired 
	private ServletContext servletContext;
	@Autowired
	private HttpSession session;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	private ModelAndView index() {
//		session.setAttribute("member", new Member("test@gmail.com",
//		1, 
//		"testName", 
//		"testNick",
//		null,
//		null,
//		0,
//		"true", 
//		"te122tt231",
//		"SILVER", "")
//);
		ModelAndView mv = new ModelAndView("index");
		List<CampAndEtc> camp = service.selectCampAndEtcS();
		mv.addObject("bestCamp", camp);
		return mv;
	}
	
	@RequestMapping("/404code")
	private String error() {
		return "404code";
	}
	
	@RequestMapping("auto_logout")
	private void autoLogout() {
			memberService.auto_logout_service(session, servletContext);
	}
}
