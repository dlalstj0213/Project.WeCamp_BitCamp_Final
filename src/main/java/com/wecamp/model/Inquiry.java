package com.wecamp.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Inquiry {
	private long inq_idx;
	private String email;
	private int s_no;
	private String title;
	private String owner_num;
	private String content;
	private Date wdate;
}
