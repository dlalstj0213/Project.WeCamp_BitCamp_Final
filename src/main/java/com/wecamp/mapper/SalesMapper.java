package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.Revenue;

public interface SalesMapper {
	List<Revenue> selectMonthlyAll(String year);
	List<Revenue> selectYearlyAll();
	List<Revenue> selectMonthlyByCamp(HashMap<String, Object> query);
	List<Revenue> selectYearlyByCamp(int camp_idx);
}
