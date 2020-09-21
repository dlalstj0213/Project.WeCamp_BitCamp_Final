package com.wecamp.service.booking;

import java.sql.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wecamp.mapper.BookingMapper;
import com.wecamp.mapper.MemberMapper;
import com.wecamp.model.Booking;
import com.wecamp.model.Member;
import com.wecamp.utils.DateUtil;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
@AllArgsConstructor
public class BookingServiceImpl implements BookingService {

	BookingMapper mapper;
	MemberMapper memberMapper;
	
	@Transactional
	@Override
	public void insertBookingAndUpdatePoint(Booking booking, String udate, long remaining_point, HttpSession session) {
		DateUtil util = new DateUtil();
		String[] result = util.splitDates(udate, "-");
		String checkInStr = result[0];
		String checkOutStr = result[1];
		Date check_in = util.transformDate(checkInStr);
		Date check_out = util.transformDate(checkOutStr);
		
		booking.setCheck_in(check_in);
		booking.setCheck_out(check_out);
		
		mapper.insertBooking(booking);
		
		String email = booking.getEmail();
		
		HashMap<String, Object> query = new HashMap<String, Object>();
		long point = PointsAfterPayment(email,booking.getTotal_fee(), remaining_point);
		log.info("#point >>>> " +point);
		log.info("#email 1 >>>> " +email);
		
		if(point != -1L) {
			query.put("point", point);
			log.info("#email 2 >>>> " +email);
			query.put("email", email);
			if(mapper.updatePoint(query)) {
				Member member  = (Member)session.getAttribute("member");
				member.setPoint(point);
				session.setAttribute("member", member);
			}
		}
	}
	
	private long PointsAfterPayment(String email, long total_fee, long remaining_point) {

		String grade = mapper.selectMemberGrade(email);
		switch (grade) {
			case "SILVER" : return Math.round(total_fee*0.005) + remaining_point;
							
			case "GOLD" : return Math.round(total_fee*0.007) + remaining_point;
			
			case "DIAMOND" : return Math.round(total_fee*0.01 + remaining_point);
			
			default: return -1L;
		}
	}

}
