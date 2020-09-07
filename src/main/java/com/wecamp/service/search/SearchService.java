package com.wecamp.service.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.wecamp.vo.SearchResultVo;

public interface SearchService {
	SearchResultVo searchCampList(String searchPlace, boolean isMore, HttpSession session, HttpServletRequest request);
}
