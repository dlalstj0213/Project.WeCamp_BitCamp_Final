package com.wecamp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.Booking;
import com.wecamp.service.booking.BookingService;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("booking")
public class BookingController {
	
	@Autowired
	BookingService service;
	
	@RequestMapping("booking.wcc")
	private String booking() {
		return "client/booking/booking/"+WebTitle.TITLE+"예약";
	}
	
	@PostMapping("payment.wcc")
	private ModelAndView getPayImformation(Booking booking, long my_point, long remaining_point) {
		//String imp_uid, String email, String total_fee, String bdate, String tel, String memo, String p_num, String name
//		log.info("imp_uid : "+imp_uid+", amount : "+ (long)amount+", buyer_email : "+buyer_email+", buyer_name : "+buyer_name+", buyer_tel : "+buyer_tel+", check_date : "+check_date);
		service.insertBookingAndUpdatePoint(booking, remaining_point);
		
		ModelAndView mv = new ModelAndView("client/booking/booking_confirm/"+WebTitle.TITLE+"결제완료");
		mv.addObject("booking",booking);
		mv.addObject("my_point",my_point);
		mv.addObject("remaining_point",remaining_point);
		
		return mv;
	}
	
}
