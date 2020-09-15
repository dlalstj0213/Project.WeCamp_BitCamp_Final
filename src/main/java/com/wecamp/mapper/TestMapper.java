package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.BookingAndCamp;

public interface TestMapper {
	Integer selectCampIdx(String email);
	long selectCountBookingList(HashMap<String, Object> query);
	int selectCountUsingStateAsT(HashMap<String, Object> query);
	int selectCountUsingStateAsF(HashMap<String, Object> query);
	int selectCountUsingStateAsU(HashMap<String, Object> query);
	List<BookingAndCamp> selectBookingList(HashMap<String, Object> query);
	boolean updateUsingState(HashMap<String, Object> query);
}
