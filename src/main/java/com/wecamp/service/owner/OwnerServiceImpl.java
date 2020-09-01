package com.wecamp.service.owner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.mapper.OwnerMapper;
import com.wecamp.model.CampAndSortAndImg;
import com.wecamp.model.Img;
import com.wecamp.model.Inquiry;
import com.wecamp.model.Member;
import com.wecamp.model.Sort;
import com.wecamp.setting.Path;
import com.wecamp.setting.WebTitle;
import com.wecamp.utils.FileUtil;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
class OwnerServiceImpl implements OwnerService{
	private OwnerMapper ownerMapper;

	@Override
	public ModelAndView submitInquiryService(Inquiry inquiry) {
		ModelAndView response = new ModelAndView();

		HashMap<String, Object> query = new HashMap<String, Object>();
		query.put("query", inquiry);
		boolean result = ownerMapper.insertInquiry(query);
		response.addObject("result", result);
		return response;
	}

	@Override
	public ModelAndView checkOwner(HttpSession session) {
		Member user  = (Member)session.getAttribute("member");
		ModelAndView response = new ModelAndView();
		response.setViewName("client/member/add_camp/"+WebTitle.TITLE+"캠핑장 등록");
		if(user == null) {
			response.addObject("result", false);
		}else if(user.getA_no() == 1) {
			response.addObject("result", false);
		}else if(user.getA_no() == 2) {
			response.addObject("result", true);
		}
		return response;
	}

	@Transactional
	@Override
	public ModelAndView addCampService(CampAndSortAndImg model, HttpSession session) {
		ModelAndView response = new ModelAndView();
		Member user = (Member)session.getAttribute("member");
		FileUtil fileUtil = new FileUtil();
		HashMap<String, Object> query = new HashMap<String, Object>();
		log.info("#> camp_idx(before) : "+model.getCamp().getCamp_idx());
		if(ownerMapper.insertCamp(model.getCamp())) {
			log.info("#> camp_idx(after) : "+model.getCamp().getCamp_idx());
			query.put("camp", model.getCamp());
			query.put("email", user.getEmail());
			if(ownerMapper.updateOwnerCampIdx(query)) {
				List<Img> imgList =  new ArrayList<Img>();
				String savedName = fileUtil.uploadFile(model.getImgThumb(), Path.CAMP_IMG_THUMB);
				imgList.add(new Img(0, 0, savedName, model.getImgThumb().getOriginalFilename(), model.getImgThumb().getSize(), "thumb"));
				for(MultipartFile file : model.getImgDetail()) {
					imgList.add(new Img(0, 0, fileUtil.uploadFile(file, Path.CAMP_IMG_DETAIL), file.getOriginalFilename(), file.getSize(), "detail"));
				}
				query.put("list", imgList);
				if(ownerMapper.insertImgs(query)) {
					query.remove("list");
					for(Sort sort : model.getSort()) {
						sort.setFname(fileUtil.uploadFile(sort.getSite_img(), Path.CAMP_IMG_SORT));
						sort.setOfname(sort.getSite_img().getOriginalFilename());
					}
					query.put("list", model.getSort());
					if(ownerMapper.insertSorts(query)) { 
						response.addObject("response", true);
					} else {
						response.addObject("response", false);
					}
				} else {
					response.addObject("response", false);
				}
			} else {
				response.addObject("response", false);
			}
		} else {
			response.addObject("response", false);
		}
		response.setViewName("client/member/add_camp/"+WebTitle.TITLE+"캠핑장 등록");
		return response;
	}

	public static void main(String[] args) {
		System.out.println(Path.CAMP_IMG_THUMB);
	}
}