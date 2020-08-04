package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class IndexController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		log.info("#IndexController index() 접근"); 
		return "index";
	}

	@RequestMapping(value = "/com_inquiry", method = RequestMethod.GET)
	public String comInquiry() {
		log.info("#IndexController index() 접근"); 
		return "client/com_inquiry/업체 문의 작성";
	}
	
	@RequestMapping("test.do")
	private String writeInquiry(String email, String owner_num, String title, String content) {
		log.info("#email : "+email+", owner_num : "+owner_num+", title : "+title+", content : "+content);
		return "redirect:com_inquiry";
	}
	
	@RequestMapping("camp_detail")
	private String campDetail() {
		return "client/camp_detail/캠핑장 이름";
	}
}
