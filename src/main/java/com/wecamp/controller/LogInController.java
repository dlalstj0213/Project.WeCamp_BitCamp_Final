package com.wecamp.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wecamp.model.Member;
import com.wecamp.service.member.MemberService;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("login")
public class LogInController {
	
	@Autowired
	private MemberService service;
	
	// 로그인 폼으로 이동
	@RequestMapping(value = "login.wcc", method = RequestMethod.GET)
	private String login() {
		return "client/member/login/" + WebTitle.TITLE + "로그인";
	}

	// 로그인 기능 구현
	@RequestMapping(value = "login_user.wcc", method = RequestMethod.POST)
	private String login(@ModelAttribute Member member, HttpSession session, HttpServletResponse response)
			throws Exception {
		member = service.login(member, response);
		session.setAttribute("member", member);
		return "redirect:../";
	}
	
	//로그아웃 기능 구현
	@RequestMapping(value = "/logout.wcc", method = RequestMethod.GET)
	private String logout(HttpSession session, HttpServletResponse response) throws Exception {
		session.removeAttribute("member");
		// 또는 session.invalidate();
		service.logout(response);
		return "redirect:../";
	}
	
	//비밀번호 찾기 기능 구현
	@RequestMapping(value = "/find_pwd.wcc", method = RequestMethod.POST)
	private void find_pwd(@ModelAttribute Member member, HttpServletResponse response) throws Exception {
		service.find_pwd(response, member);
	}
}
