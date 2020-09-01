package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("booking")
public class BookingController {
	@RequestMapping("booking.wcc")
	private String booking() {
		return "client/booking/booking/"+WebTitle.TITLE+"예약";
	}
	
	@RequestMapping("booking_confirm.wcc")
	private ModelAndView bookingConfirm() {
		log.info("#>bookingConfirm() 호출");
		ModelAndView response = new ModelAndView("client/booking/booking_confirm/"+WebTitle.TITLE+"예약확인");
		return response;
	}
}
