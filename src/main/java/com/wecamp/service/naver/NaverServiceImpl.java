package com.wecamp.service.naver;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.wecamp.auth.SnsLogin;
import com.wecamp.auth.SnsValue;
import com.wecamp.model.Member;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class NaverServiceImpl implements NaverService{

	@Override
	public void naverLogin(String snsService, String code, HttpSession session, Model model) throws Exception {
		SnsLogin snsLogin = new SnsLogin(new SnsValue(snsService));
		Member profile = snsLogin.getUserProfile(code);
		session.setAttribute("member", profile);
		System.out.println("====================================");
		log.info("#>Profile : "+profile);
		System.out.println("====================================");
	}

	@Override
	public void naverLogout(HttpSession session, String accessToken) throws IOException {
		SnsValue naverSns = new SnsValue("naver");
		String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=delete"
				+ "&client_id="+naverSns.getClientId()
				+ "&client_secret="+naverSns.getClientSecret()
				+ "&access_token="+accessToken
				+ "&service_provider=NAVER";
		String response = requestToServer(apiURL);
		log.info("#> response : "+response);
		session.removeAttribute("member");
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
