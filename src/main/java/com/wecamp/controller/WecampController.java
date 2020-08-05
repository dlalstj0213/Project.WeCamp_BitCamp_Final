package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/wecamp/*")
public class WecampController {
	
	@RequestMapping("/booking.do")
	public String booking() {
		return "wecamp/booking/위캠프";
	}
	@RequestMapping("/signup")
	public String sign() {
		return "wecamp/sign_up/회원가입";
	}
	@RequestMapping("/jq12")
	public String test() {
		return "wecamp/jq12/jq12";
	}
}
