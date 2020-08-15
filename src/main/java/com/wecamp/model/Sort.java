package com.wecamp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Sort {
	private long sort_idx;
	private long camp_idx;
	private String sort_name;
	private String site_name;
	private int people_num;
	private long site_fee;
	private String fname;
	private String ofname;
}
