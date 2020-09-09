package com.wecamp.service.sales;

import java.util.List;

import com.wecamp.model.Revenue;

public interface SalesService {
	List<Revenue> selectMonthlyAllService(String year);
	List<Revenue> selectYearlyAllService();
	List<Revenue> selectMonthlyByCampService(int camp_idx, String year);
	List<Revenue> selectYearlyByCampService(int camp_idx);
}
