package com.wecamp.service.owner;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.mapper.OwnerMapper;
import com.wecamp.model.Inquiry;
import com.wecamp.model.Member;
import com.wecamp.model.Owner;
import com.wecamp.setting.WebTitle;
import com.wecamp.vo.OwnerDetailVo;

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
		response.setViewName("client/member/com_inquiry/"+WebTitle.TITLE+"캠핑장 등록");
		boolean result = false;
		StringBuffer remake = new StringBuffer();
		if(inquiry.getOwner_num().length() != 10) {
			result = false;
		} else {
			remake.append(inquiry.getOwner_num().substring(0, 3));
			remake.append("-");
			remake.append(inquiry.getOwner_num().substring(3, 5));
			remake.append("-");
			remake.append(inquiry.getOwner_num().substring(5, 10));
			inquiry.setOwner_num(remake.toString().trim());
			HashMap<String, Object> query = new HashMap<String, Object>();
			query.put("query", inquiry);
			result = ownerMapper.insertInquiry(query);
		}
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
	
	//마이페이지 내 사업자 정보 디테일
	@Override
	public ModelAndView get_owner_full_detail(HttpSession session) {
		Member member = (Member)session.getAttribute("member");
		Owner owner = ownerMapper.select_owner(member.getEmail());
		Integer total_heart = ownerMapper.select_heart(owner.getCamp_idx());
		if(total_heart == null) {
			total_heart = 0;
		}
		OwnerDetailVo result = new OwnerDetailVo(
				ownerMapper.select_camp(owner.getCamp_idx()),
				owner,
				ownerMapper.select_img(owner.getCamp_idx()),
				ownerMapper.select_sort(owner.getCamp_idx()),
				total_heart
				);
		ModelAndView response =  new ModelAndView();
		return response.addObject("vo", result);
	}
}
