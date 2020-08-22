package com.wecamp.mapper;

import java.util.HashMap;

import com.wecamp.model.Heart;

public interface HeartMapper {
	
	int selectHeart(int camp_idx);
	Heart selectOwnHeart(HashMap<String, Object> query);
	void insertHeart(HashMap<String, Object> query);
	void deleteHeart(HashMap<String, Object> query);

}
