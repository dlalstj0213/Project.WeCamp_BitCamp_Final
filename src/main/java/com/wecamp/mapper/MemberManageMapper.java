package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.LMember;
import com.wecamp.model.Member;
import com.wecamp.model.MemberAndAuthority;
import com.wecamp.model.MemberAndOwner;

public interface MemberManageMapper {
	MemberAndOwner selectMemberInfo(String email);
	List<MemberAndAuthority> selectMembers(HashMap<String, Object> query);
	int selectCountMember();
	List<MemberAndAuthority> selectMembersByKeyword(HashMap<String, Object> query);
	int selectCountMembersByKeyword(HashMap<String, Object> query);
	Member selectMember(String email);
	boolean deleteMember(String email);
	
	boolean insertLeaveMember(Member member);
	LMember selectOneLeaveMember(String email);
	int selectCountsLeaveMembers();
	List<LMember> selectLeaveMembers(HashMap<String, Object> query);
	List<LMember> selectLeaveMembersByKeyword(HashMap<String, Object> query);
	int selectCountLeaveMembersByKeyword(HashMap<String, Object> query);
	boolean deleteLeaveMember(String email);
}
