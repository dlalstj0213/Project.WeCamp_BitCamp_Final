package com.wecamp.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wecamp.model.Camp;
import com.wecamp.service.company.CompanyService;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("admin/company")
public class CompanyManageController {
	@Autowired
	HttpSession session;
	
	@Autowired
	CompanyService service;
	
	@RequestMapping("camp_manage.wcc")
	private String campManage() {
		if(session.getAttribute("admin") == null) {
			return "redirect:../admin/login.wcc";
		}
		return "admin/company/camp_manage/"+WebTitle.TITLE+"캠핑 관리";
	}
	
	@ResponseBody
	@RequestMapping(value="campData.wcc", produces = "application/text; charset=UTF-8")
	private String campData() {
		return service.get_campList();
	}
	
	@GetMapping("campDel.wcc")
	private String campDelete(Long camp_idx) {
		service.del_campList(camp_idx);
		return "redirect:camp_manage.wcc";
	}
	
	@PostMapping("campEdit.wcc")
	private String campEdit(Camp camp) {
		service.Edit_campList(camp);
		return "redirect:camp_manage.wcc";
	}

}
