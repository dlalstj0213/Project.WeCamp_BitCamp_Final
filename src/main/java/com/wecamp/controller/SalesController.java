package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("admin/sales")
public class SalesController {

	@RequestMapping("chart_monthly.wcc")
	private String salesChartM() {
		return "admin/sales/chart_monthly/"+WebTitle.TITLE+"매출 통계";
	}
	@RequestMapping("chart_yearly.wcc")
	private String salesChartY() {
		return "admin/sales/chart_yearly/"+WebTitle.TITLE+"매출 통계";
	}
	
	
}
