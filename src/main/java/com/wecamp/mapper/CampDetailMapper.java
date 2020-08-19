package com.wecamp.mapper;

import java.util.HashMap;
import java.util.List;

import com.wecamp.model.Camp;
import com.wecamp.model.Img;
import com.wecamp.model.Sort;

public interface CampDetailMapper{
	Camp selectCampInfo(int camp_idx);
	List<Sort> selectSort(HashMap<String, Object> query);
	List<Img> selectDetailImg(int camp_idx);
	List<String> selectSortName(int camp_idx); 
}
