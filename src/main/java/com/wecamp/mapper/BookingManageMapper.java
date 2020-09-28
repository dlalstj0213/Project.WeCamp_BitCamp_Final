package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.BookingInfo;
import com.wecamp.model.Camp;

public interface BookingManageMapper {
	long select_count_booking_list(HashMap<String, Object> query);
	List<BookingInfo> select_booking_list(HashMap<String, Object> query);
	int select_count_using_state(HashMap<String, Object> query);
	boolean update_using_state(HashMap<String, Object> query);
	Camp select_owner_camp(String email);
}
