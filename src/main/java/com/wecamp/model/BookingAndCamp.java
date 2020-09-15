package com.wecamp.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 캠핑장 예약관리를 위한 DTO
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookingAndCamp {
	private int rnum;
	
	private String imp_uid;
	private String email;
	private int camp_idx;
	private String camp_name;
	private int site_num;
	
	private int sort_idx;
	private String sort_name;
	private String site_name;
	
	private int s_no;
	private String s_name;
	
	private long total_fee;
	private Date bdate;
	private Date check_in;
	private Date check_out;
	private String tel;
	private String memo;
	private int p_num;
	private String review_state;
	private String name;
	private long service_fee;
	private String using_state;
	

}
