package com.wecamp.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Heart {
	private long heart_idx;
	private String email;
	private long camp_idx;
}
