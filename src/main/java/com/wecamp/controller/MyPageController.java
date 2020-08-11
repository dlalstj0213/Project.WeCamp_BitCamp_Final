package com.wecamp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("mypage")
public class MyPageController {
	@RequestMapping(value = "my_page.wcc", method = RequestMethod.GET)
	private String myPage() {
		return "client/member/my_page/"+WebTitle.TITLE+"마이페이지";
	}
}
