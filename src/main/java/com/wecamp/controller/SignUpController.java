package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("sign_up")
public class SignUpController {
	@RequestMapping(value = "sign_up.wcc", method = RequestMethod.GET)
	private String signUp() {
		return "client/member/sign_up/"+WebTitle.TITLE+"회원가입";
	}
}
