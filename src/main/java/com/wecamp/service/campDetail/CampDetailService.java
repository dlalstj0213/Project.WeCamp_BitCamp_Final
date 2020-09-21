package com.wecamp.service.campDetail;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.model.Review;
import com.wecamp.vo.TouristVo;

public interface CampDetailService{
	ModelAndView selectReviewS(int camp_idx, boolean isMore, HttpSession session, ModelAndView mv, String nextPage);
	ModelAndView campDetail(int camp_idx);
	//Map<String, List<TouristVo>> getTourists(double x, double y);
	ModelAndView getTourists(double x, double y);
}
