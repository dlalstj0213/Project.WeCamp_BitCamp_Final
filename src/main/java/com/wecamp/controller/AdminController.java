package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("admin")
public class AdminController {
	@RequestMapping("admin.wcc")
	private String adminMain() {
		return "admin/admin_main/"+WebTitle.TITLE+"관리자";
	}
	
	//tiles를 거쳐가지 않는 메소드
	@RequestMapping("admin_login.wcc")
	private String adminLogin() {
		return "admin/admin_login";
	}
	//tiles를 거쳐가지 않는 메소드 test
		@RequestMapping("test")
		private String test() {
			return "admin/test";
		}
	
	@RequestMapping("member_manage.wcc")
	private String memberManage() {
		return "admin/member_manage/"+WebTitle.TITLE+"회원 관리";
	}
}