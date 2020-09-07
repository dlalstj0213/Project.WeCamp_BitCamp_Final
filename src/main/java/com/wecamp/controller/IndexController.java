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
//		session.setAttribute("member", new Member("test@gmail.com",
//																										1, 
//																										"testName", 
//																										"testNick",
//																										null,
//																										null,
//																										0,
//																										"true", 
//																										"te122tt231",
//																										"SILVER", "")
//				);
		return "index";
	}
}
