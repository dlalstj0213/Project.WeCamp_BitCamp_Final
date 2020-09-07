package com.wecamp.controller.auth;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wecamp.auth.SnsLogin;
import com.wecamp.auth.SnsValue;
import com.wecamp.model.Member;
import com.wecamp.setting.WebTitle;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class NaverLoginController {
	private SnsValue naverSns; 
	@Autowired
	private HttpSession session;

	@GetMapping("naver/login")
	private String login(Model model) {
		log.info("#> call - naver login");
		SnsLogin snsLogin = new SnsLogin(new SnsValue("naver"));
		model.addAttribute("naver_url", snsLogin.getNaverAuthURL());
		return "client/member/login/" + WebTitle.TITLE + "로그인";
	}

	@RequestMapping("auth/{snsService}/callback")
	private String snsLoginCallback(@PathVariable String snsService, Model model, @RequestParam String code) throws Exception{
		log.info("#>snsLoginCallback : "+snsService);
		//SnsValue sns = null;
		//if(StringUtils.equals("naver", service)) sns = naverSns;

		//1. code를 이용해서 access_token 받기
		//2. access_token을 이용해서 사용자 profile 정보 가져오기
		SnsLogin snsLogin = new SnsLogin(new SnsValue(snsService));
		Member profile = snsLogin.getUserProfile(code);
		System.out.println("==========================");
		log.info("#>Profile : "+profile);
		System.out.println("==========================");
		//model.addAttribute("result", profile);
		session.setAttribute("member", profile);
		
		//3. DB 해당 유저가 존재하는지 체크
		// 로직 구현
		
		//4. 존재시 강제 로그인, 미존재시 가입페이지로
		// 로직 구현

		return "redirect:../../naver/result";
	}

	@RequestMapping("naver/result")
	private String result() {
		return "client/temp/result";
	}

	@RequestMapping("delete_token")
	private String deleteToken(String accessToken) throws IOException {
		log.info("#>deleteToken 호출");
		naverSns = new SnsValue("naver");
		String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=delete"
				+ "&client_id="+naverSns.getClientId()
				+ "&client_secret="+naverSns.getClientSecret()
				+ "&access_token="+accessToken
				+ "&service_provider=NAVER";

		String response = requestToServer(apiURL);
		session.removeAttribute("member");
		log.info("#> response : "+response);
		return "client/member/login/" + WebTitle.TITLE + "로그인";
	}
	
	private String requestToServer(String apiURL) throws IOException {
		return requestToServer(apiURL, "");
	}
	
	private String requestToServer(String apiURL, String headerStr) throws IOException {
		URL url = new URL(apiURL);
		HttpURLConnection con = (HttpURLConnection)url.openConnection();
		con.setRequestMethod("GET");
		log.info("#> header Str: " + headerStr);
		if(headerStr != null && !headerStr.equals("") ) {
			con.setRequestProperty("Authorization", headerStr);
		}
		int responseCode = con.getResponseCode();
		BufferedReader br;
		log.info("#> responseCode="+responseCode);
		if(responseCode == 200) { // 정상 호출
			br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		} else {  // 에러 발생
			br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		}
		String inputLine;
		StringBuffer res = new StringBuffer();
		while ((inputLine = br.readLine()) != null) {
			res.append(inputLine);
		}
		br.close();
		if(responseCode==200) {
			return res.toString();
		} else {
			return null;
		}
	}
}
