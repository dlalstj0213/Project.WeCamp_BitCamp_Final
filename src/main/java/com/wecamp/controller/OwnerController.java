package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("owner")
public class OwnerController {
	@RequestMapping(value = "com_inquiry.wcc", method = RequestMethod.GET)
	private String comInquiry() {
		return "client/member/com_inquiry/"+WebTitle.TITLE+"업체 문의 작성";
	}
	
	@RequestMapping(value = "add_camp.wcc", method = RequestMethod.GET)
	private String addListing() {
		return "client/member/add_camp/"+WebTitle.TITLE+"캠핑장 등록";
	}
}
