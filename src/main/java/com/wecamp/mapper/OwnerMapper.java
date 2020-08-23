package com.wecamp.mapper;

import java.util.HashMap;

public interface OwnerMapper {
	boolean insertInquiry(HashMap<String, Object> query);
	boolean insertCamp(HashMap<String, Object> query);
	boolean insertImgs(HashMap<String, Object> query);
	boolean insertSorts(HashMap<String, Object> query);
	boolean updateOwnerCampIdx(HashMap<String, Object> query);
}
