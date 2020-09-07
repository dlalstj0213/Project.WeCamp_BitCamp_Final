package com.wecamp.service.owner;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.CampAndSortAndImg;
import com.wecamp.model.Inquiry;

public interface OwnerService {
	ModelAndView submitInquiryService(Inquiry inquiry);
	ModelAndView checkOwner(HttpSession session);
	ModelAndView addCampService(CampAndSortAndImg model, HttpSession session);
	//마이페이지 내 사업자 정보 디테일
	ModelAndView get_owner_full_detail(HttpSession session);
}
