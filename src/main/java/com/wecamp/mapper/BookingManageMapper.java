package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.BookingInfo;

public interface BookingManageMapper {
	Integer select_owner_camp_idx(String email);
	long select_count_booking_list(HashMap<String, Object> query);
	List<BookingInfo> select_booking_list(HashMap<String, Object> query);
	int select_count_using_state(HashMap<String, Object> query);
	boolean update_using_state(HashMap<String, Object> query);
}
