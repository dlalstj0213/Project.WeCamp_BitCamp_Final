package com.wecamp.controller;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wecamp.service.admin.AdminService;
import com.wecamp.setting.WebTitle;


import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
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
	
	@RequestMapping("sales_chart_monthly.wcc")
	private String salesChartM() {
		return "admin/sales_chart_monthly/"+WebTitle.TITLE+"매출 통계";
	}
	@RequestMapping("sales_chart_yearly.wcc")
	private String salesChartY() {
		return "admin/sales_chart_yearly/"+WebTitle.TITLE+"매출 통계";
	}

	@RequestMapping("camp_manage.wcc")
	private String campManage() {
		return "admin/camp_manage/"+WebTitle.TITLE+"캠핑 관리";
	}
	
	@ResponseBody
	@RequestMapping(value="campData.wcc", produces = "application/text; charset=UTF-8")
	private String campData() {
		return adminService.get_campList();
	}
	
	@GetMapping("campDel.wcc")
	private String campDelete(Long camp_idx) {
		adminService.del_campList(camp_idx);
		return "redirect:camp_manage.wcc";
	}
}