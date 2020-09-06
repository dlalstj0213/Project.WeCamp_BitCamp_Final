package com.wecamp.service.booking;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wecamp.mapper.BookingMapper;
import com.wecamp.model.Booking;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
@AllArgsConstructor
public class BookingServiceImpl implements BookingService {

	BookingMapper mapper;
	
	@Transactional
	@Override
	public void insertBookingAndUpdatePoint(Booking booking, long remaining_point) {
		mapper.insertBooking(booking);
		
		String email = booking.getEmail();
		
		HashMap<String, Object> query = new HashMap<String, Object>();
		long point = PointsAfterPayment(email,booking.getTotal_fee(), remaining_point);
		log.info("#point >>>> " +point);
		log.info("#email 1 >>>> " +email);
		
		if(point != -1) {
			query.put("point", point);
			log.info("#email 2 >>>> " +email);
			query.put("email", email);
			mapper.updatePoint(query);
		}
	}
	
	private long PointsAfterPayment(String email, long total_fee, long remaining_point) {

		String grade = mapper.selectMemberGrade(email);
		switch (grade) {
			case "SILVER" : return Math.round(total_fee*0.005) + remaining_point;
							
			case "GOLD" : return Math.round(total_fee*0.007) + remaining_point;
			
			case "DIAMOND" : return Math.round(total_fee*0.01 + remaining_point);
			
			default: return -1;
		}
	}

}
