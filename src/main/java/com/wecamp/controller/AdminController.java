package com.wecamp.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.Admin;
import com.wecamp.model.MemberAndOwner;
import com.wecamp.service.admin.AdminService;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private HttpSession session;
	
	@RequestMapping("main.wcc")
	private String adminMain() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return "admin/admin_main/"+WebTitle.TITLE+"관리자";
	}
	
	//tiles를 거쳐가지 않는 메소드
	@GetMapping("login.wcc")
	private String login() {
		return "admin/admin_login";
	}
	
	//관리자 로그인
	@PostMapping("login.wcc")
	private String login(Admin admin) {
		if(adminService.loginAdminService(admin, session)) {
			return "redirect:main.wcc";
		}
		return "redirect:login.wcc";
	}
	
	//회원 관리( 회원 정보 리스트 )
	@RequestMapping("member_manage.wcc")
	private ModelAndView memberManage() {
		ModelAndView response = null;
		if(session.getAttribute("admin") == null) {
			response = new ModelAndView("redirect:login.wcc");
			return response;
		}
		response = new ModelAndView("admin/member_manage/"+WebTitle.TITLE+"회원 관리");
		return response;
	}
	
	@GetMapping("member")
	private ModelAndView getMemberList(String currentPage) {
		ModelAndView response = adminService.getListOfMembersService(currentPage, session);
		response.setViewName("admin/memberList");
		return response;
	}
	
	@ResponseBody
	@GetMapping("search_member")
	private ModelAndView searchMember(String keyword, String category, String currentPage) {
		ModelAndView response = adminService.searhMemberService(keyword, category, currentPage, session);
		response.setViewName("admin/memberList");
		return response;
	}

	@ResponseBody
	@GetMapping("member_datail")
	private MemberAndOwner getMemberInfo(String email) {
		return adminService.getMemberInfoService(email);
	}

	@ResponseBody
	@PostMapping("leave_member")
	private boolean leaveMember(String email) {
		log.info("#> email  : "+email);
		return adminService.leaveMemberService(email);
	}
	
	@RequestMapping("sales_chart_monthly.wcc")
	private String salesChartM() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return "admin/sales_chart_monthly/"+WebTitle.TITLE+"매출 통계";
	}
	@RequestMapping("sales_chart_yearly.wcc")
	private String salesChartY() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return "admin/sales_chart_yearly/"+WebTitle.TITLE+"매출 통계";
	}

	@RequestMapping("camp_manage.wcc")
	private String campManage() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return "admin/camp_manage/"+WebTitle.TITLE+"캠핑 관리";
	}                                                                                                                                                                                                                                                                                                                         
	
	@ResponseBody
	@RequestMapping(value="campData.wcc", produces = "application/text; charset=UTF-8")
	private String campData() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return adminService.get_campList();
	}
	
	@GetMapping("campDel.wcc")
	private String campDelete(Long camp_idx) {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		adminService.del_campList(camp_idx);
		return "redirect:camp_manage.wcc";
	}
}