package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("search")
public class SearchController {
	@RequestMapping("camp_detail.wcc")
	private String campDetail() {
		String campName = "캠핑장이름";
		// control logic
		return "client/search/camp_detail/"+WebTitle.TITLE+campName;
	}
}
