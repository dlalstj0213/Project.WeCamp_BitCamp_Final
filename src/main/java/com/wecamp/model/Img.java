package com.wecamp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Img {
	private long img_idx;
	private long camp_idx;
	private String fname;
	private String ofname;
	private long fsize;
	private String division;
}
