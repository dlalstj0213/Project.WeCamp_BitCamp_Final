package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.wecamp.setting.Path;
import com.wecamp.utils.FileUtil;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("test")
public class TestController {
	@RequestMapping("/test")
	private String indexTest() {
		return "client/member/test";
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
}
