package com.wecamp.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wecamp.service.heart.HeartService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("heart")
public class HeartController {
	
	@Autowired
	HeartService heartService;
	
	@RequestMapping("insert.wcc")
	private void insert(String email, Integer camp_idx, HttpServletResponse httpServletResponse) {
		
		int flag = 0;
		
		if(heartService.selectOwnHeartS(email, camp_idx)*1==1) {
			flag = heartService.insertHeartS(email, camp_idx);
			try{
				httpServletResponse.getWriter().println(flag);
				httpServletResponse.flushBuffer();
			}catch(IOException ie) {
				ie.printStackTrace();
			}
		}else {
			try{
				httpServletResponse.getWriter().println(flag);
				httpServletResponse.flushBuffer();
			}catch(IOException ie) {
				ie.printStackTrace();
			}
		}
	    
	}
	
	@RequestMapping("delete.wcc")
	private void delete(String email, Integer camp_idx, HttpServletResponse httpServletResponse) {
		
		int flag = 0;
		
		if(heartService.selectOwnHeartS(email, camp_idx)*1==1) {
			try{
				httpServletResponse.getWriter().println(flag);
				httpServletResponse.flushBuffer();
			}catch(IOException ie) {
				ie.printStackTrace();
			}
		}else {
			flag = heartService.deleteHeartS(email, camp_idx);
			try{
				httpServletResponse.getWriter().println(flag);
				httpServletResponse.flushBuffer();
			}catch(IOException ie) {
				ie.printStackTrace();
			}
		}
		
	}
	
	@RequestMapping("select.wcc")
	private void select(Integer camp_idx, HttpServletResponse httpServletResponse) {
		int count = heartService.selectHeartS(camp_idx);
		try{
			httpServletResponse.getWriter().println(count);
			httpServletResponse.flushBuffer();
		}catch(IOException ie) {
			ie.printStackTrace();
		}
	}
	
	// 위의 3개 메서드는 ajax 통신에 적합합니다

}
