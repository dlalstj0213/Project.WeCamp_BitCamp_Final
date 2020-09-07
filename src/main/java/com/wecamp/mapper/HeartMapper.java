package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.Heart;
import com.wecamp.model.HeartAndCampAndImg;

public interface HeartMapper {
	// 다솜 언니 부분
	int selectHeart(int camp_idx);
	Heart selectOwnHeart(HashMap<String, Object> query);
	void insertHeart(HashMap<String, Object> query);
	void deleteHeart(HashMap<String, Object> query);
	// 수빈 부분
	List<HeartAndCampAndImg> select_heart(HashMap<String, Object> query);
	long select_heart_count(HashMap<String, Object> query);
}
