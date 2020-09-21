package com.wecamp.service.booking;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.wecamp.model.Booking;

public interface BookingService {
	void insertBookingAndUpdatePoint(Booking booking, String udate, long remaining_point, HttpSession session);
}
