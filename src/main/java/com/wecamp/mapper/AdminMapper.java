package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.LMember;
import com.wecamp.model.Member;
import com.wecamp.model.MemberAndAuthority;
import com.wecamp.model.MemberAndOwner;

public interface AdminMapper {
	int selectAdmin(HashMap<String, Object> query);
	MemberAndOwner selectMemberInfo(String email);
	List<MemberAndAuthority> selectMembers(HashMap<String, Object> query);
	int selectCountMember();
	List<MemberAndAuthority> selectMembersByKeyword(HashMap<String, Object> query);
	int selectCountMembersByKeyword(HashMap<String, Object> query);
	Member selectMember(String email);
	boolean deleteMember(String email);
	boolean insertLMember(LMember lmember);
}
