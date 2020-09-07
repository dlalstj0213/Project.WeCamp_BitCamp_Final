package com.wecamp.mapper;

import java.util.HashMap;

import com.wecamp.model.Camp;

public interface OwnerMapper {
	boolean insertInquiry(HashMap<String, Object> query);
	boolean insertCamp(Camp query);
	boolean insertImgs(HashMap<String, Object> query);
	boolean insertSorts(HashMap<String, Object> query);
	boolean updateOwnerCampIdx(HashMap<String, Object> query);
}
