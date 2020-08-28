package com.wecamp.mapper;

import com.wecamp.model.Review;

//mapper.xml의 아이디와 메소드 이름이 똑같아야 함
public interface ReviewMapper {
	Review selectReview(long camp_idx);
	void deleteReview(long camp_idx);
	Review selectReviewForMember(String email);
	void deleteReviewForMember(Review review);
	void updateReviewForMember(Review review);
	boolean insert_review(Review review);
	
}
