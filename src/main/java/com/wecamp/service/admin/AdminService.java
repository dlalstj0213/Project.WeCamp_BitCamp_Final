package com.wecamp.service.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.wecamp.model.Admin;
import com.wecamp.model.Member;
import com.wecamp.vo.ChartVo;
import com.wecamp.vo.TotalResultVo;

public interface AdminService {
	TotalResultVo getTotalValuesService();
	boolean loginAdminService(Admin admin, HttpSession session);
	ChartVo getTodayAndYesterdaySalesService();
	TotalResultVo getTotalMemberService();
	List<Member> getLoginMembersService();
}
