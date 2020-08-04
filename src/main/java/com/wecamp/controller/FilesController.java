package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("file")
@AllArgsConstructor
public class FilesController {
	
	@PostMapping("uploadFIle.url")
	private String fileUpload(MultipartHttpServletRequest multipartRequest) {
		log.info("#>mulipartRequest : "+multipartRequest);
		return "client/com_inquiry";
	}
}
