package com.wecamp.service.owner;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.Inquiry;
import com.wecamp.vo.OwnerDetailVo;

public interface OwnerService {
	ModelAndView submitInquiryService(Inquiry inquiry);
	ModelAndView checkOwner(HttpSession session);
	//
	ModelAndView get_owner_full_detail(HttpSession session);
}
