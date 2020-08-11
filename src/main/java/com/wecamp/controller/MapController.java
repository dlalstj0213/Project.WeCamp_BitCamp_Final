package com.wecamp.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.GeocoderStatus;
import com.google.code.geocoder.model.LatLng;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
<<<<<<< HEAD:src/main/java/com/wecamp/controller/mapController.java
@RequestMapping("result")
public class mapController {
=======
@RequestMapping("/result/*")
public class MapController {
>>>>>>> 5283346970a9535f1051e839aea6f9d4a1dc5c58:src/main/java/com/wecamp/controller/MapController.java
	
	@RequestMapping("map")
	public String list(){
		return "result/map";
	}

	@RequestMapping("search02")
	public String listSearch(){
		return "result/mapList";
	}

	@ResponseBody
	@PostMapping("search01")
	public Map<String, Object> mapVal(Long seq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		String location = "서울시 마포구 성산동 254-24";
		map.put("addr", location);
		return map;
	}
}
