package com.wecamp.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.wecamp.service.index.InstaService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/insta/*")
public class InstaController {
	
	@Autowired
	private InstaService instaService;
	
	@RequestMapping("test")
	private String test() {
		return "insta/test";
	}

	@RequestMapping("getGrid")
	private void instaGrid(HttpServletResponse response) {
		String jsonArray = instaService.getHttpHTML_GET();

		try {
			response.setContentType("application/json; charset=utf-8");
			PrintWriter pw = response.getWriter();
			pw.println(jsonArray);
		}catch(IOException ie) {}
	}
	

	

}
