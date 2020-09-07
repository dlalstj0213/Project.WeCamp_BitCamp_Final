package com.wecamp.service.memberManage;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.LMember;
import com.wecamp.model.MemberAndOwner;

public interface MemberManageService {
	//회원
	MemberAndOwner getMemberInfoService(String email);
	ModelAndView getListOfMembersService(String cpStr, HttpSession session);
	ModelAndView searhMemberService(String keyword, String category, String cpStr, HttpSession session);
	boolean leaveMemberService(String email);
	//탈퇴회원
	ModelAndView getListOfLeaveMembersService(String cpStr, HttpSession session);
	ModelAndView searhLeaveMemberService(String keyword, String category, String currentPage, HttpSession session);
	LMember getLeaveMemberInfoService(String email);
	boolean deleteLeaveMemberService(String email);
}
