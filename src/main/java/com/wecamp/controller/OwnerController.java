package com.wecamp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.Inquiry;
import com.wecamp.service.owner.OwnerService;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("owner")
public class OwnerController {
	@Autowired
	private OwnerService ownerService;
	
	@RequestMapping(value = "com_inquiry.wcc", method = RequestMethod.GET)
	private String comInquiry() {
		return "client/member/com_inquiry/"+WebTitle.TITLE+"업체 문의 작성";
	}
	
	@RequestMapping(value = "add_camp.wcc", method = RequestMethod.GET)
	private String addListing() {
		return "client/member/add_camp/"+WebTitle.TITLE+"캠핑장 등록";
	}

	@PostMapping("inquiry.wcc")
	private ModelAndView inquiry(Inquiry inquiry) {
		boolean result = ownerService.submitInquiryService(inquiry);
		ModelAndView response = new ModelAndView();
		response.setViewName("client/member/com_inquiry/"+WebTitle.TITLE+"캠핑장 등록");
		response.addObject("result", result);
		return response;
	}
}
