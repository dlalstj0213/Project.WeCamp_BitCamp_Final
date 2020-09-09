package com.wecamp.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wecamp.service.sales.SalesService;
import com.wecamp.setting.WebTitle;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("admin")
public class SalesManageController {
	@Autowired
	HttpSession session;
	@Autowired
	SalesService service;
	
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
	@RequestMapping("sales_data_wecamp_m.wcc")
	private List<?> salesDataAllM(String year) {
		return service.selectMonthlyAllService(year);
	}
	
	@RequestMapping("sales_data_wecamp_y.wcc")
	private List<?> salesDataAllY() {
		return service.selectYearlyAllService();
	}
	
	@ResponseBody
	@RequestMapping(value="sales_data_each_m.wcc", method=RequestMethod.GET, produces="application/json")
	private List<?> salesDataCampM(Integer camp_idx, String year) {
		return service.selectMonthlyByCampService(camp_idx, year);
	}
	
	@RequestMapping("sales_data_each_y.wcc")
	private List<?> salesDataCampY(Integer camp_idx) {
		return service.selectYearlyByCampService(camp_idx);
	}

}
