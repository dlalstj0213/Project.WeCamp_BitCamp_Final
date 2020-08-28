package com.wecamp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
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
	private ModelAndView addListing(HttpSession session) {
		ModelAndView response = ownerService.checkOwner(session);
		return response;
	}

	@PostMapping("inquiry.wcc")
	private ModelAndView inquiry(Inquiry inquiry) {
		ModelAndView response = ownerService.submitInquiryService(inquiry);
		return response;
	}
	
	@PostMapping("upload_camp.wcc")
	private String addCamp(ArrayList<MultipartFile> site_img, ArrayList<MultipartFile> test) {
		log.info("#> addCamp() 접근"); 
		log.info("#> size : "+site_img.size());
		for(MultipartFile file : site_img) {
			log.info("#> file imgs name : " +file.getOriginalFilename());
		}
		for(MultipartFile file : test) {
			log.info("#> test name : "+file.getOriginalFilename());
		}
		return "client/member/add_camp/"+WebTitle.TITLE+"업체 문의 작성";
	}
	
	@GetMapping("owner_detail")
	private ModelAndView owner_detail(HttpSession session) {
		ModelAndView response = ownerService.get_owner_full_detail(session);
		response.setViewName("client/member/owner_detail");
		return response;
	}
}
