package com.wecamp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wecamp.model.BookingAndCampAndImg;
import com.wecamp.model.Member;
import com.wecamp.model.Review;
import com.wecamp.service.heart.HeartService;
import com.wecamp.service.member.MemberService;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping(value = "mypage.wcc", method = RequestMethod.GET)
	private String myPage() {
		if(session.getAttribute("member") == null) {
			return "redirect:../login/login.wcc";
		}
		return "client/member/my_page/" + WebTitle.TITLE + "마이페이지";
	}

	// 회원 탈퇴
	@RequestMapping(value = "leave.wcc", method = RequestMethod.POST)
	private String leaveMember(Member member, HttpSession session, HttpServletResponse response) {
		if(session.getAttribute("member") == null) {
			return "redirect:../login/login.wcc";
		}
		log.info("#>leaveMember 접근");
		boolean result = memberService.delete_member(member, session, response);
		if (result) {
			session.removeAttribute("member");
		}
		log.info("#>leaveMember result : " + result);
		return "redirect:../";
	}

	// 비밀번호 변경
	@RequestMapping(value = "change_pwd.wcc", method = RequestMethod.POST)
	private String update_pwd(@ModelAttribute Member member, @RequestParam("old-pwd") String old_pwd,
			HttpSession session, HttpServletResponse response, RedirectAttributes rttr) {
		if(session.getAttribute("member") == null) {
			return "redirect:../login/login.wcc";
		}
		session.setAttribute("member", memberService.update_pwd(member, old_pwd, response));
		rttr.addFlashAttribute("msg", "비밀번호 수정 완료");
		return "redirect:mypage.wcc";
	}

	// 회원정보 수정
	@RequestMapping(value = "/update_member.wcc", method = RequestMethod.POST)
	private String update_member(@ModelAttribute Member member, HttpSession session, RedirectAttributes rttr)
			throws Exception {
		if(session.getAttribute("member") == null) {
			return "redirect:../login/login.wcc";
		}
		session.setAttribute("member", memberService.update_member(member));
		rttr.addFlashAttribute("msg", "회원정보 수정 완료");
		return "redirect:mypage.wcc";
	}
	
	//예약 내역
	@ResponseBody //ajax할 때 써야 하는 어노테이션 설명 찾아보기
	@RequestMapping(value = "/booking_info.json", method = RequestMethod.GET)
	private ModelAndView booking_info(String email, Integer nextPage, HttpSession session) {
		log.info("#> 접근");
		log.info("#>nextpage: " + nextPage);
		return memberService.show_booking_info(email, nextPage, session);
	}
	
	//리뷰 작성
	@RequestMapping(value = "/add_review.wcc", method = RequestMethod.POST)
	private String add_review(Review review, int booking_idx) {
		log.info("#> review: " + review);
		memberService.add_reivew_service(review, booking_idx, session);
		return "redirect:mypage.wcc";
	}
	
	//찜 목록
	@ResponseBody
	@RequestMapping(value = "/heart_list.json", method = RequestMethod.GET)
	private ModelAndView heart_list(String email, Integer nextPage, HttpSession session) {
		return memberService.show_heart_list(email, nextPage, session);
	}
	
	//찜 목록 삭제
	@RequestMapping(value = "/delete_heart.wcc", method = RequestMethod.POST)
	private String delete_heart(String email, int camp_idx, HttpSession session) {
		//int camp_idx = (Integer)session.getAttribute("camp-idx");
		log.info("#> camp_idx : " + camp_idx);
		memberService.delete_heart_list(email, camp_idx);
		return "redirect:mypage.wcc";
	}
	
}
