package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wecamp.model.Booking;
import com.wecamp.model.Camp;
import com.wecamp.model.Img;
import com.wecamp.model.Review;
import com.wecamp.model.Sort;

public interface BookingMapper{
	void insertBooking(Booking booking);
	void updatePoint(HashMap<String, Object> query);
	//void updatePoint(@Param("point")String point,@Param("email")String email);
	String selectMemberGrade(String email);
}
