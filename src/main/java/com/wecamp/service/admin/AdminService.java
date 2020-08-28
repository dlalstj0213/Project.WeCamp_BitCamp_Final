package com.wecamp.service.admin;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.Admin;
import com.wecamp.model.MemberAndOwner;

public interface AdminService {
	String get_campList();
	void del_campList(long camp_idx);
	boolean loginAdminService(Admin admin, HttpSession session);
	MemberAndOwner getMemberInfoService(String email);
	ModelAndView getListOfMembersService(String cpStr, HttpSession session);
	boolean leaveMemberService(String email);
	ModelAndView searhMemberService(String keyword, String category, String currentPage, HttpSession session);
}
