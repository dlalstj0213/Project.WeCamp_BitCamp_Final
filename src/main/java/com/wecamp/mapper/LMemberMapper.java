package com.wecamp.mapper;

import com.wecamp.model.LMember;
import com.wecamp.model.Member;

public interface LMemberMapper {
	void insertLeaveMember(Member leavingMember);
	boolean delete_leave_member(String email);
	LMember select_leave_member(String email);
}
