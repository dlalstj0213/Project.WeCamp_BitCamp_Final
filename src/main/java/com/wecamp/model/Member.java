package com.wecamp.model;

import java.sql.Date;

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
	private Date birth;
	private long point;
	private String grade;
}
