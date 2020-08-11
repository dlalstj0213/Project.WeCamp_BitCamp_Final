package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class HomeController {

	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPage() {
		log.info("#HomeController index() 접근");
		return "mypage/dashboard/hello";
	}

	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUp() {
		log.info("#HomeController index() 접근");
		return "mypage/sign_up/signup";
	}

	@RequestMapping(value = "/loginUser", method = RequestMethod.GET)
	public String loginUser() {
		log.info("#HomeController index() 접근");
		return "mypage/login/login";
	}
	
	//deprecated
	@RequestMapping(value = "/listingDetail", method = RequestMethod.GET)
	public String listingDetail() {
		log.info("#HomeController index() 접근");
		return "mypage/listing_details/listingDetail";
	}
	//deprecated
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String booking() {
		log.info("#HomeController index() 접근");
		return "mypage/booking/booking";
	}

	@RequestMapping(value = "/addListing", method = RequestMethod.GET)
	public String addListing() {
		log.info("#HomeController index() 접근");
		return "mypage/add_listing/addListing";
	}
}
