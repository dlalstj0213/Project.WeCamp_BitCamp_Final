package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/mypage/*")
public class MemberController {
	@RequestMapping(value = "/myPage.do")
	public String myPage() throws Exception {
		log.info("#HomeController boardList() 접근"); 
		return "mypage/dashboard";
	}
}
