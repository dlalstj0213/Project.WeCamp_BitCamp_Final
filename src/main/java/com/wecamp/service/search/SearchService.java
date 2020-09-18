package com.wecamp.service.search;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.wecamp.vo.SearchResultVo;

public interface SearchService {
	Optional<SearchResultVo> searchCampList(String searchPlace, boolean isMore, String checkIn, String checkOut, HttpSession session, HttpServletRequest request);
}
