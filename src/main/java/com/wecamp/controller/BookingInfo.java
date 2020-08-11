package com.wecamp.controller;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookingInfo {
	private String campName;
	private String campZone;
	private String peopleNum;
	private String category;
	private long campPrice;
	private long bbqPrice;
	private long totalPrice;
	private String startDate;
	private String endDate;
}
