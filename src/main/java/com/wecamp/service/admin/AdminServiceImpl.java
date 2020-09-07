package com.wecamp.service.admin;


import java.util.HashMap;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.wecamp.mapper.AdminMapper;
import com.wecamp.model.Admin;
import com.wecamp.vo.TotalResultVo;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService{
	private AdminMapper adminMapper;
	
	@Override
	public boolean loginAdminService(Admin admin, HttpSession session) {
		HashMap<String, Object> query = new HashMap<String, Object>();
		log.info("#> admin : "+admin);
		query.put("admin", admin);
		
		if(adminMapper.selectAdmin(query) > 0) {
			session.setAttribute("admin", 1);
			return true;
		}
		return false;
	}

	@Override
	public TotalResultVo getTotalValuesService() {
		Integer totalMember = adminMapper.selectCountMember();
		if(totalMember == null) {
			totalMember = 0;
		}
		Integer totalCamp = adminMapper.selectCountCamp();
		if(totalCamp == null) {
			totalCamp = 0;
		}
		Integer totalBooking = adminMapper.selectCountBooking();
		if(totalBooking == null) {
			totalBooking = 0;
		}
		Integer totalInquiry = adminMapper.selectCountInquiry();
		if(totalInquiry == null) {
			totalInquiry = 0;
		}
		Integer totalLMember = adminMapper.selectCountLeaveMember();
		if(totalLMember == null) {
			totalLMember = 0;
		}
		Integer totalCurrentBooking = adminMapper.selectCountCurrentBooking();
		if(totalCurrentBooking == null) {
			totalCurrentBooking = 0;
		}
		int totalUncheckedInquiry = adminMapper.selectCountInquiryUnchecked();
		return new TotalResultVo(totalMember, totalCamp, totalBooking, totalInquiry,
				totalLMember, totalCurrentBooking, totalUncheckedInquiry);
	}
}
