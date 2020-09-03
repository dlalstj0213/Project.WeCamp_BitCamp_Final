package com.wecamp.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wecamp.auth.SnsLogin;
import com.wecamp.auth.SnsValue;
import com.wecamp.model.Member;
import com.wecamp.service.member.MemberService;
import com.wecamp.service.naver.NaverService;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("login")
public class LogInController {
    
	@Autowired
	private MemberService service;
	@Autowired
	private NaverService naverService;
	@Autowired
	private HttpSession session;
	
	// 로그인 폼으로 이동
	@RequestMapping(value = "login.wcc", method = RequestMethod.GET)
	private String login(Model model) {
		log.info("#> call - login() ");
		SnsLogin snsLogin = new SnsLogin(new SnsValue("naver"));
		model.addAttribute("naver_url", snsLogin.getNaverAuthURL());
		return "client/member/login/" + WebTitle.TITLE + "로그인";
	}
	
	// 로그인 기능 구현
	@RequestMapping(value = "login_user.wcc", method = RequestMethod.POST)
	private String login(@ModelAttribute Member member, HttpServletResponse response)
			throws Exception {
		member = service.login(member, response);
		session.setAttribute("member", member);
		return "redirect:../";
	}
	
	//Naver Login
	@RequestMapping("{snsService}/callback")
	private String naverLogin(@PathVariable String snsService, Model model, @RequestParam String code) throws Exception {
		log.info("#> call - snsLoginCallback : "+snsService);
		// 1. code를 이용해서 AccessToken을 받아야 해요 ^^
		// 2. AccessToken을 이용해서 사용자 프로필 정보 가져와야 해요 ^^
		naverService.naverLogin(snsService, code, session, model);
		
		// 3. DB에서 해당 유저가 존재하는지..? CHECK ^^;;
			// - 1. SELECT 해서 중복되는 email이 존재하지 않으면 강제 회원가입(디비에 인설트) + 강제 로그인
			
		// 4. 존재 시 강제 로그인, 존재 안 할 시 가입 페이지로 ^^;;
		return "redirect:../../";
	}
	
	@RequestMapping("logout_naver")
	private String logoutNaver(String accessToken) throws IOException {
		naverService.naverLogout(session, accessToken);
		return "redirect:login.wcc";
	}
	
	//로그아웃 기능 구현
	@RequestMapping(value = "/logout.wcc", method = RequestMethod.GET)
	private String logout(HttpServletResponse response) throws Exception {
		// 또는 session.invalidate();
		service.logout(response);
		session.removeAttribute("member");
		return "redirect:../";
	}
	
	//비밀번호 찾기 기능 구현
	@RequestMapping(value = "/find_pwd.wcc", method = RequestMethod.POST)
	private void find_pwd(@ModelAttribute Member member, HttpServletResponse response) throws Exception {
		service.find_pwd(response, member);
	}
	
	@RequestMapping(value="loginPostNaver", method=RequestMethod.GET)
	public String loginPOSTNaver(HttpSession session) {
		
		return "redirect:../";
	}
}
