package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("login")
public class LogInController {
	@RequestMapping(value = "login.wcc", method = RequestMethod.GET)
	private String login() {
		return "client/member/login/"+WebTitle.TITLE+"로그인";
	}
}
