package com.wecamp.service.admin;

import javax.servlet.http.HttpSession;

import com.wecamp.model.Admin;
import com.wecamp.vo.TotalResultVo;

public interface AdminService {
	TotalResultVo getTotalValuesService();
	String get_campList();
	void del_campList(long camp_idx);
	boolean loginAdminService(Admin admin, HttpSession session);
}
