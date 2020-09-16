package com.wecamp.test;

import org.springframework.web.servlet.ModelAndView;

public interface TestService {
	ModelAndView getBookingRecordsService(String cpStr, boolean isMore, String search, String keyword, String category);
	boolean usingCampService(String imp_uid, String action);
}
