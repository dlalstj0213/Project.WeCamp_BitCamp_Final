package com.wecamp.service.campDetail;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.mapper.CampDetailMapper;
import com.wecamp.model.Camp;
import com.wecamp.model.Img;
import com.wecamp.model.Sort;
import com.wecamp.setting.WebTitle;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class CampDetailServiceImpl implements CampDetailService {

	CampDetailMapper mapper;
	
	private Camp selectCampInfoS(int camp_idx) {
		//Camp camp = 
		return mapper.selectCampInfo(camp_idx);
	}

	private List<String> selectSortName(int camp_idx) {
		List<String> sortNameList = mapper.selectSortName(camp_idx);
		
		return sortNameList;
	}

	private List<Img> selectDetailImgS(int camp_idx) {
		return mapper.selectDetailImg(camp_idx);
	}
	
	private List<Sort> selectSortS(int camp_idx, String sort_name){
		HashMap<String, Object> query= new HashMap<String,Object>();
		query.put("camp_idx", camp_idx);
		query.put("sort_name", sort_name);
		
		return mapper.selectSort(query);
	}
	
	@Override
	public ModelAndView campDetail(int camp_idx) {
		Camp camp =mapper.selectCampInfo(camp_idx);
		List<Img> ImgDetailList = mapper.selectDetailImg(camp_idx);
		String campName = camp.getCamp_name();
		ModelAndView mv = new ModelAndView("client/search/camp_detail/"+WebTitle.TITLE+campName);
		
		List<String> sortNameList = mapper.selectSortName(camp_idx);
		List<List<Sort>> list= new ArrayList<List<Sort>>();
		
		
		for(int i=0; i<sortNameList.size(); i++) {
			
			list.add(selectSortS(camp_idx, sortNameList.get(i)));
			
			log.info("###3 구분이름 : "+sortNameList+" : "+i);
		}
		mv.addObject("sortNameList",sortNameList);
		mv.addObject("camp", camp);
		mv.addObject("ImgDetailList",ImgDetailList);
		mv.addObject("list", list);
		//mv.addObject("sortNameSize",sortNameList.size());
		
		return mv;
	}
	
}
