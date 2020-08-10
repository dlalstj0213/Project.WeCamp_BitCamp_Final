package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/wecamp/*")
public class WecampController {
	
	@RequestMapping("/com_registration.com")
	public String comRegistration() {
		return "wecamp/com_registration/위캠프 : My 캠핑장 등록";
	}
	
	@RequestMapping("/booking.com")
	public String booking() {
		return "wecamp/booking/위캠프 : 예약";
	}
	
	@RequestMapping("/booking_confirm.com")
	public String bookingConfirm() {
		return "wecamp/booking_confirm/위캠프 : 예약 확인";
	}
	
	@RequestMapping("/signup.com")
	public String sign() {
		return "wecamp/sign_up/회원가입";
	}
	
	@RequestMapping("/mypage.com")
	public String mypage() {
		return "wecamp/mypage/위캠프 : 마이페이지";
	}
	@RequestMapping("/inquery.com")
	public String inquery() {
		return "wecamp/com_inquery/위캠프 : 업체 문의";
	}
	@RequestMapping("/detail.com")
	public String detail() {
		return "wecamp/camp_detail/위캠프 : 상세내역";
	}
}
