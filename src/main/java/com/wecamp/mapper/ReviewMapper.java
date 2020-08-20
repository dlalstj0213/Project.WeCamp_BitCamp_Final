package com.wecamp.mapper;

import com.wecamp.model.Review;

public interface ReviewMapper {
	Review selectReview(long camp_idx);
	void deleteReview(long camp_idx);
	Review selectReviewForMember(String email);
	void deleteReviewForMember(Review review);
	void updateReviewForMember(Review review);
	
}
