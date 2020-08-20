package com.wecamp.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("result")
public class MapController {
	
	@RequestMapping("map.wcc")
	public String list(){
		return "client/result/map";
	}

	@RequestMapping("search02")
	public String listSearch(){
		return "client/result/mapList";
	}

//	@ResponseBody
//	@PostMapping("search01")
//	public Map<String, Object> mapVal(Long seq) {
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		String location = "서울시 마포구 성산동 254-24";
//		map.put("addr", location);
//		return map;
}
