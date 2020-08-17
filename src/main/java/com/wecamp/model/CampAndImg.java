package com.wecamp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CampAndImg {
	private long camp_idx;
	private String camp_name;
	private String address;
	private String camp_tel;
	private int site_num;
	private int full_num;
	private int parking;
	private String conv;
	private String sec_conv;
	private String etc_conv;
	private String agency_tel;
	private String agency_name;
	private int total_booking;
	private String intro;
	private long img_idx;
	private String fname;
	private String ofname;
	private long fsize;
	private String division;
	private long min_fee;
	private float avgStar;
	private int fullStarNum;
	private boolean isHalfStarExist;
	private int emptyStarNum;
}
