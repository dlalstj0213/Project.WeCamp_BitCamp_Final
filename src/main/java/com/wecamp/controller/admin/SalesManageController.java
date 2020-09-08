package com.wecamp.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wecamp.setting.WebTitle;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("admin")
public class SalesManageController {
	@Autowired
	HttpSession session;
	
	// Dasom : check
	@RequestMapping("sales_chart_monthly.wcc")
	private String salesChartM() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return "admin/sales/chart_monthly/"+WebTitle.TITLE+"매출 통계";
	}
	@RequestMapping("sales_chart_yearly.wcc")
	private String salesChartY() {
		if(session.getAttribute("admin") == null) {
			return "redirect:login.wcc";
		}
		return "admin/sales/chart_yearly/"+WebTitle.TITLE+"매출 통계";
	}

}
