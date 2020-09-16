package com.wecamp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private String email;
	private int a_no;
	private String name;
	private String nickname;
	private String pwd;
	private long point;
	private String approval_status;
	private String approval_key;
	private String grade;
	private String accessToken;
	
	private String loginTime;
	private long[] differTime;
	private int loginCount = 0;
	
	public Member(String email, int a_no, String name, String nickname, String pwd, long point, String approval_status,
			String approval_key, String grade, String accessToken) {
		this.email = email;
		this.a_no = a_no;
		this.name = name;
		this.nickname = nickname;
		this.pwd = pwd;
		this.point = point;
		this.approval_status = approval_status;
		this.approval_key = approval_key;
		this.grade = grade;
		this.accessToken = accessToken;
	}
}
