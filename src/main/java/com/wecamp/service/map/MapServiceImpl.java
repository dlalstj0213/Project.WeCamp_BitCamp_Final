package com.wecamp.service.map;

import org.springframework.stereotype.Service;

import com.wecamp.mapper.ReviewMapper;
import com.wecamp.model.Camp;
import com.wecamp.model.Img;
import com.wecamp.model.Review;
import com.wecamp.model.Sort;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MapServiceImpl implements MapService {
	
	//private CampMapper campMapper;
	private ReviewMapper reviewMapper;

	@Override
	public Camp selectCampByAddress(String address) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Camp selectCampByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Review selectReview(long camp_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Sort selectSort(long camp_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Img selectThumbnail(long camp_idx) {
		// TODO Auto-generated method stub
		return null;
	}

}
