package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.Camp;
import com.wecamp.model.Img;
import com.wecamp.model.Owner;
import com.wecamp.model.Sort;

import com.wecamp.model.Camp;

public interface OwnerMapper {
	boolean insertInquiry(HashMap<String, Object> query);
	boolean insertCamp(Camp query);
	boolean insertImgs(HashMap<String, Object> query);
	boolean insertSorts(HashMap<String, Object> query);
	boolean updateOwnerCampIdx(HashMap<String, Object> query);
	Owner select_owner(String email);
	Camp select_camp(int camp_idx);
	List<Img> select_img(int camp_idx);
	List<Sort> select_sort(int camp_idx);
	Integer select_heart(int camp_idx);
}
