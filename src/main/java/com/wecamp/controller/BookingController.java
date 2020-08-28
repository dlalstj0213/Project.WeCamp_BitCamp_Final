package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("booking")
public class BookingController {
	@RequestMapping("booking.wcc")
	private String booking() {
		return "client/booking/booking/"+WebTitle.TITLE+"예약";
	}
	
	@RequestMapping("booking_confirm.wcc")
	private String bookingConfirm() {
		return "client/booking/booking_confirm/"+WebTitle.TITLE+"예약확인";
	}
	
	@RequestMapping("payment.wcc")
	private String getPayImformation() {
		
		return "client/booking/booking_confirm/"+WebTitle.TITLE+"결제완료";
	}
}
