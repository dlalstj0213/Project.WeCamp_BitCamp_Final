package com.wecamp.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Review {
	private long review_idx;
	private long camp_idx;
	private String email;
	private String nickname;
	private String content;
	private Date wdate;
	private float star; 
}
