package com.wecamp.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Booking {
	private String imp_uid;
	private String email;
	private int camp_idx;
	private int s_no;
	private long total_fee;
	private Date bdate;
	private String udate;
	private String tel;
	private String memo;
	private int p_num;
	private String review_state;
	private String name;
}
