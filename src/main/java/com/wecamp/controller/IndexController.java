package com.wecamp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wecamp.model.Member;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class IndexController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	private String index(HttpSession session) {
		//로그인 했다고 가정
		session.setAttribute("loginUser", new Member("linkdog@gmail.com", 2, "이름1", "닉네임1", "qwer1234@", null, 0, "SILVER"));
		
		return "index";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	private String kakaoTest() {
		return "client/temp/test";
	}
}
