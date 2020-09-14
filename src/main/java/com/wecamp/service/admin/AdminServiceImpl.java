package com.wecamp.service.admin;


import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.wecamp.mapper.AdminMapper;
import com.wecamp.model.Admin;
import com.wecamp.model.Member;
import com.wecamp.utils.DateUtil;
import com.wecamp.utils.TimeUtil;
import com.wecamp.vo.ChartVo;
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

	@SuppressWarnings("unchecked")
	@Override
	public TotalResultVo getTotalValuesService(ServletContext servletContext) {
		LinkedList<Member> loginUser = (LinkedList<Member>)servletContext.getAttribute("loginUser");
		int totalLoginMember = 0;
		if(loginUser != null) {
			totalLoginMember = loginUser.size();
		}
		Integer totalCamp = adminMapper.selectCountCamp();
		Integer totalBooking = adminMapper.selectCountBooking();
		Integer totalInquiry = adminMapper.selectCountInquiry();
		Integer totalCurrentBooking = adminMapper.selectCountCurrentBooking();
		Integer totalUncheckedInquiry = adminMapper.selectCountInquiryUnchecked();
		return new TotalResultVo(totalLoginMember, totalCamp, totalBooking, 
				totalInquiry, totalCurrentBooking, totalUncheckedInquiry);
	}

	@Override
	public ChartVo getTodayAndYesterdaySalesService() {
		DateUtil dutil = new DateUtil();
		long todaySales = adminMapper.selectSumTotalFeeOnDate(dutil.getToday());
		long yesterdaySales = adminMapper.selectSumTotalFeeOnDate(dutil.getYesterday());
		return new ChartVo(todaySales, yesterdaySales);
	}

	@Override
	public TotalResultVo getTotalMemberService() {	
		Integer totalMember = adminMapper.selectCountMember();
		Integer totalLeaveMember = adminMapper.selectCountLeaveMember();
		return new TotalResultVo(totalMember, totalLeaveMember);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public LinkedList<Member> getLoginMembersService(ServletContext servletContext){
		if(servletContext.getAttribute("loginUser") == null) return null;
		LinkedList<Member> loginUser = (LinkedList<Member>)servletContext.getAttribute("loginUser");
		TimeUtil timeUtil = new TimeUtil();
		String nowTime = timeUtil.getDateTime();
		Iterator<Member> itr = loginUser.iterator();
		while(itr.hasNext()) {
			Member user = itr.next();
			user.setDifferTime(timeUtil.getTimeDiffer(user.getLoginTime(), nowTime));
		}
		return loginUser;
	}
}
