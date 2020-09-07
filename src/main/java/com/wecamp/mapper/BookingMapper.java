package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.BookingAndCampAndImg;

public interface BookingMapper {
	 List<BookingAndCampAndImg> select_booking(HashMap<String, Object> query);
	 long select_booking_count(HashMap<String, Object> query);
	 boolean update_state(int booking_idx);
}
