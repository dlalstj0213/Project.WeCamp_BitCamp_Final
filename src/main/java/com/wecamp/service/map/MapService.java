package com.wecamp.service.map;

import com.wecamp.model.Camp;
import com.wecamp.model.Img;
import com.wecamp.model.Review;
import com.wecamp.model.Sort;

public interface MapService {
	public Camp selectCampByAddress(String address);
	public Camp selectCampByName(String name);
	public Review selectReview(long camp_idx);
	public Sort selectSort(long camp_idx);
	public Img selectThumbnail(long camp_idx);
}
