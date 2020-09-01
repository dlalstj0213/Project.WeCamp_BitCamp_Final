package com.wecamp.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wecamp.model.Admin;
import com.wecamp.service.admin.AdminService;
import com.wecamp.setting.WebTitle;
import com.wecamp.vo.TotalResultVo;

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
		return "admin/main/admin_main/"+WebTitle.TITLE+"관리자";
	}
	
	@ResponseBody
	@RequestMapping("main.json")
	private TotalResultVo getTotalValues() {
		return adminService.getTotalValuesService();
	}
	
	//tiles를 거쳐가지 않는 메소드
	@GetMapping("login.wcc")
	private String login() {
		return "admin/login/admin_login";
	}
	
	//관리자 로그인
	@PostMapping("login.wcc")
	private String login(Admin admin) {
		if(adminService.loginAdminService(admin, session)) {
			return "redirect:main.wcc";
		}
		return "redirect:login.wcc";
	}
	
	@RequestMapping("sales_chart_monthly.wcc")
	private String salesChartM() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return "admin/camp/sales_chart_monthly/"+WebTitle.TITLE+"매출 통계";
	}
	@RequestMapping("sales_chart_yearly.wcc")
	private String salesChartY() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return "admin/camp/sales_chart_yearly/"+WebTitle.TITLE+"매출 통계";
	}

	@RequestMapping("camp_manage.wcc")
	private String campManage() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return "admin/camp/camp_manage/"+WebTitle.TITLE+"캠핑 관리";
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