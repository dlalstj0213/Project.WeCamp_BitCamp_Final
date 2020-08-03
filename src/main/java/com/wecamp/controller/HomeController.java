package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class HomeController {
	
	@RequestMapping(value = "/boardList.do")
	public String boardList() throws Exception {
		log.info("#HomeController boardList() 접근"); 
		return "boardList/리스트";
	}
	
	@RequestMapping(value = "/boardView.do")
	public String boardView() throws Exception {
		log.info("#HomeController boardView() 접근"); 
		return "boardView/뷰";
	}

	@RequestMapping(value = "/my_page.do")
	public String myPage() {
		log.info("#HomeController myPage() 접근"); 
		return "myPage/my-page/마이페이지";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		log.info("#HomeController home() 접근"); 
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		log.info("#HomeController index() 접근"); 
		return "index";
	}
}
