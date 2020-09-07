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
	

}