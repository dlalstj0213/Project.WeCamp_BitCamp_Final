package com.wecamp.service.admin;

import java.util.LinkedList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import com.wecamp.model.Admin;
import com.wecamp.model.Member;
import com.wecamp.vo.ChartVo;
import com.wecamp.vo.TotalResultVo;

public interface AdminService {
	TotalResultVo getTotalValuesService(ServletContext servletContext);
	boolean loginAdminService(Admin admin, HttpSession session);
	ChartVo getTodayAndYesterdaySalesService();
	TotalResultVo getTotalMemberService();
	LinkedList<Member> getLoginMembersService(ServletContext servletContext);
}
