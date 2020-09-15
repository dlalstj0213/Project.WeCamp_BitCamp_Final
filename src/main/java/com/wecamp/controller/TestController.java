package com.wecamp.controller;

import java.util.Collections;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.wecamp.setting.Path;
import com.wecamp.setting.WebTitle;
import com.wecamp.test.TestService;
import com.wecamp.utils.FileUtil;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("test")
public class TestController {
	@Autowired
	private TestService service;
	@Autowired
	private HttpSession session;
	
	@RequestMapping("test.do")
	private String indexTest() {
		return "client/member/test/"+WebTitle.TITLE+"테스트";
	}
	
	@PostMapping("upload")
	private String upload(MultipartFile file) {
		FileUtil util = new FileUtil();
		String str = Path.CAMP_IMG_SORT;
		str.replace("\\", "/");
		String str2 = util.uploadFile(file, str);
		log.info("#> test1 업로드 : "+str);
		log.info("#> test2 업로드 : "+str2);
		return null;
	}
	
	@RequestMapping("booking_list")
	private ModelAndView ajaxTest(boolean isMore, String currentPage) {
		if(session.getAttribute("member") == null) return null;
		log.info("#> call - ajaxTest()");
		log.info("#> data : "+isMore+" / "+currentPage);
		ModelAndView response = service.getBookingRecordsService(currentPage, isMore);
		response.setViewName("client/member/test_list");
		return response;
	}
	
	@ResponseBody
	@PostMapping("start_using")
	private Map<String, Boolean> startUsing(@RequestBody String imp_uid) {
		return Collections.singletonMap("success", service.usingCampService(imp_uid, "start"));
	}

	@ResponseBody
	@PostMapping("end_using")
	private Map<String, Boolean> endUsing(@RequestBody String imp_uid) {
		return Collections.singletonMap("success", service.usingCampService(imp_uid, "end"));
	}
}
