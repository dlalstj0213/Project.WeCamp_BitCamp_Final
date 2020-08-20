package com.wecamp.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wecamp.model.Member;
import com.wecamp.service.member.MemberService;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "mypage.wcc", method = RequestMethod.GET)
	private String myPage() {
		return "client/member/my_page/"+WebTitle.TITLE+"마이페이지";
	}
	//회원 탈퇴
	@RequestMapping(value = "leave.wcc", method = RequestMethod.POST)
	private String leaveMember(Member member, HttpSession session, HttpServletResponse response) {
		log.info("#>leaveMember 접근");
		boolean result = memberService.delete_member(member, session, response);
		if(result) {
			session.removeAttribute("member");
		}
		log.info("#>leaveMember result : "+result);
		return "redirect:../";
	}
	
	//비밀번호 변경
	@RequestMapping(value = "change_pwd.wcc", method = RequestMethod.POST)
	private String update_pwd(@ModelAttribute Member member, @RequestParam("old-pwd") String old_pwd, HttpSession session, HttpServletResponse response, RedirectAttributes rttr) {
		session.setAttribute("member", memberService.update_pwd(member, old_pwd, response));
		rttr.addFlashAttribute("msg", "비밀번호 수정 완료");
		return "redirect:mypage.wcc";
	}
}
