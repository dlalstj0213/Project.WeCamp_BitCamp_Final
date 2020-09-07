package com.wecamp.service.index;


import java.util.List;

import org.springframework.stereotype.Service;

import com.wecamp.mapper.CampMapper;
import com.wecamp.model.CampAndEtc;
import com.wecamp.model.CampAndImg;
import com.wecamp.utils.StarUtil;
import com.wecamp.vo.SearchResultVo;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BestCampServiceImpl implements BestCampService {
	
	private CampMapper mapper;
	@Override
	public List<CampAndEtc> selectCampAndEtcS() {
		List<CampAndEtc> mvpCampList = mapper.selectCampAndEtc();
		
		if(mvpCampList !=null) {
			StarUtil starUtil = new StarUtil();
			for(CampAndEtc cae : mvpCampList) {
				Float avgStar = cae.getAvgStar();
				avgStar = (Math.round(avgStar*10)/10.0f);
				cae.setAvgStar(avgStar);
				cae.setFullStarNum(starUtil.getFullStarNumber(avgStar));
				cae.setEmptyStarNum(starUtil.getEmptyStarNumber(avgStar));
				cae.setHalfStarExist(starUtil.checkHalfStar(avgStar));
			}
		}
		
		return mvpCampList;
	}

}
