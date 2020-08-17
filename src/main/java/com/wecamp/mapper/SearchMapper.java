package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.CampAndImg;

public interface SearchMapper {
	List<CampAndImg> selectSearchedListOfCamp(HashMap<String, Object> query);
	int selectCountCamp();
	long selectMinFeeOfCamp(long camp_idx);
	String selectAverageStar(long camp_idx);
}
