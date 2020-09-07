package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.CampAndImg;

public interface SearchMapper {
	List<CampAndImg> selectSearchedListOfCamp(HashMap<String, Object> query);
	int selectCountCamp();
	String select();
	long selectMinFeeOfCamp(int camp_idx);
	Float selectAverageStar(int camp_idx);
}
