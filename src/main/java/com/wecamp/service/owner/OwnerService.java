package com.wecamp.service.owner;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.CampAndSortAndImg;
import com.wecamp.model.Inquiry;

public interface OwnerService {
	ModelAndView submitInquiryService(Inquiry inquiry);
	ModelAndView checkOwner(HttpSession session);
	ModelAndView addCampService(CampAndSortAndImg model, HttpSession session);
}
