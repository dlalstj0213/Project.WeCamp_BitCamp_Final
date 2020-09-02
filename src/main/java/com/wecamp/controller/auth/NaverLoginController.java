package com.wecamp.controller.auth;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wecamp.auth.SnsLogin;
import com.wecamp.auth.SnsValue;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("naver")
public class NaverLoginController {
	private SnsValue naverSns; 
	
	@GetMapping("login")
	private String login(Model model) {
		log.info("#> call - naver login");
		SnsLogin snsLogin = new SnsLogin(new SnsValue());
		model.addAttribute("naver_url", snsLogin.getNaverAuthURL());
		return "client/member/login/" + WebTitle.TITLE + "로그인";
	}
}
