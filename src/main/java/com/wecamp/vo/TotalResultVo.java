package com.wecamp.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class TotalResultVo {
	private int totalMember;
	private int totalCamp;
	private int totalBooking;
	private int totalInquiry;
	private int totalLMember;
	private int totalCurrentBooking;
	private int totalUncheckedInquiry;
}
