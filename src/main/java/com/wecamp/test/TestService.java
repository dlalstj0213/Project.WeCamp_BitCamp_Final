package com.wecamp.test;

import org.springframework.web.servlet.ModelAndView;

public interface TestService {
	ModelAndView getBookingRecordsService(String currentPage, boolean isMore);
	boolean usingCampService(String imp_uid, String action);
}
