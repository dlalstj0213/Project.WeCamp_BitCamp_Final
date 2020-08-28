package com.wecamp.service.campDetail;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.Review;

public interface CampDetailService{
	ModelAndView selectReviewS(int camp_idx, boolean isMore, HttpSession session, ModelAndView mv, String nextPage);
	ModelAndView campDetail(int camp_idx);
}
