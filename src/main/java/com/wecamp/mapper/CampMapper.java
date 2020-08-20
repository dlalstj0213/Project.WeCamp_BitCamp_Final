package com.wecamp.mapper;

import java.util.List;

import com.wecamp.model.Camp;

public interface CampMapper {
	List<Camp> selectCamp();
	void deleteCamp(long camp_idx);
}
