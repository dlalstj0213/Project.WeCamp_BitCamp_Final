package com.wecamp.utils;

public class StarUtil {
	public int getFullStarNumber(float avgStar) {
		return (int)avgStar;
	}
	
	public boolean checkHalfStar(float avgStar) {
		String check = String.valueOf(avgStar);
		check = check.substring(check.length()-1);
		if(check.equals("0")) {
			return false;
		}
		return true; 
	}
	
	public int getEmptyStarNumber(float avgStar) {
		float result = 5.0f - avgStar;
		return (int)result;
	}
}
