package com.wecamp.service.admin;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.wecamp.mapper.AdminMapper;
import com.wecamp.mapper.CampMapper;
import com.wecamp.model.Admin;
import com.wecamp.model.Camp;
import com.wecamp.model.LMember;
import com.wecamp.model.Member;
import com.wecamp.model.MemberAndAuthority;
import com.wecamp.model.MemberAndOwner;
import com.wecamp.utils.PageUtil;
import com.wecamp.vo.Pagination;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService{
	private AdminMapper adminMapper;
	private CampMapper campMapper;
	
	@Override
	public String get_campList() {
		
		List<Camp> campList = campMapper.selectCamp();
		
		//상위 오브젝트 생성
		JsonObject obj1 = new JsonObject();
		//data: 뒤에 들어갈 값인 jArray 생성
		JsonArray jArray = new JsonArray();
		
		//배열생성, jArray의 0번째 배열에 쭈루룩, 1번째 배열에 쭈루룩~
		for(Camp camp : campList){
		
			JsonObject obj2 = new JsonObject();
			//obj2는 반드시 for문 안에 놓아야 한다. 그래야 중복이 안생긴다.
			
			obj2.addProperty("camp_idx", camp.getCamp_idx());
			obj2.addProperty("camp_name",camp.getCamp_name());
			obj2.addProperty("address",camp.getAddress());
			obj2.addProperty("camp_tel",camp.getCamp_tel());
			obj2.addProperty("site_num",camp.getSite_num());
			obj2.addProperty("full_num",camp.getFull_num());
			obj2.addProperty("parking",camp.getParking());
			obj2.addProperty("conv",camp.getConv());
			obj2.addProperty("sec_conv",camp.getSec_conv());
			obj2.addProperty("etc_conv",camp.getEtc_conv());
			obj2.addProperty("agency_tel",camp.getAgency_tel());
			obj2.addProperty("agency_name",camp.getAgency_name());
			
			jArray.add(obj2);

		}
		
		//마지막으로 최상위의 jsonObject에 data와 jArry를 넣어준다.
		
		obj1.add("data", jArray);

		String resp = obj1.toString();
//		String resp_2 = null;
//		try {
//			resp_2 = new String(resp.getBytes("UTF-8"),"UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
//		

		

		return resp;
	}
	
	@Override
	public void del_campList(long camp_idx) {
		campMapper.deleteCamp(camp_idx);
	}

	@Override
	public boolean loginAdminService(Admin admin, HttpSession session) {
		HashMap<String, Object> query = new HashMap<String, Object>();
		log.info("#> admin : "+admin);
		query.put("admin", admin);
		
		if(adminMapper.selectAdmin(query) > 0) {
			session.setAttribute("admin", 1);
			return true;
		}
		return false;
	}

	@Override
	public MemberAndOwner getMemberInfoService(String email) {
		return adminMapper.selectMemberInfo(email);
	}
	
	@Override
	public ModelAndView getListOfMembersService(String cpStr, HttpSession session) {
		ModelAndView response = new ModelAndView();
		PageUtil pageUtil = new PageUtil();
		
		int currentPage = pageUtil.getCurrentPageSession(cpStr, session);
		int pageSize = pageUtil.getPageSize("10", session);
		int listCount = adminMapper.selectCountMember();
		
		Pagination page = new Pagination(listCount, currentPage, pageSize);
		response.addObject("page", page);
		
		HashMap<String, Object> query = new HashMap<String, Object>();
		query.put("page", page);
		List<MemberAndAuthority> memberList = adminMapper.selectMembers(query);
		response.addObject("list", memberList);
		
		return response;
	}
	
	@Transactional
	@Override
	public boolean leaveMemberService(String email) {
		Member member = adminMapper.selectMember(email);
		LMember lmember = new LMember();
		if(member != null) {
			lmember.setEmail(email);
			lmember.setBirth(member.getBirth());
			lmember.setName(member.getName());
			lmember.setNickname(member.getNickname());
			if(adminMapper.insertLMember(lmember)) {
				if(adminMapper.deleteMember(email))	{
					return true;
				}
			}
			return false;
		}else {
			return false;
		}
	}
	
	@Override
	public ModelAndView searhMemberService(String keyword, String category, String cpStr, HttpSession session) {
		PageUtil pageUtil = new PageUtil();
		HashMap<String, Object> query = new HashMap<String, Object>();
		query.put("keyword", keyword.trim());
		query.put("category", category.trim());
		int listCount = adminMapper.selectCountMembersByKeyword(query);
		int currentPage = pageUtil.getCurrentPageSession(cpStr, session);
		int pageSize = pageUtil.getPageSize("10", session);
		
		Pagination paging = new Pagination(listCount, currentPage, pageSize);
		query.put("page", paging);
		List<MemberAndAuthority> memberList = adminMapper.selectMembersByKeyword(query);
		
		ModelAndView response = new ModelAndView();
		response.addObject("list", memberList);
		response.addObject("page", paging);
		response.addObject("search", "search");
		return response;
	}
}
