package com.wecamp.auth;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import com.github.scribejava.core.builder.api.DefaultApi20;

import lombok.Data;

@Data
public class SnsValue implements SnsUrls{
	private String service;
	private String clientId;
	private String clientSecret;
	private String redirectUrl;
	private DefaultApi20 api20Instance;
	private String profileUrl;
	
	private boolean isNaver;
	
	//customize
	public SnsValue() {
		this.clientId = "xePwNGhnHIDELelwGQ3S";
		this.clientSecret="IM8uxljwiC";
		this.redirectUrl="https://localhost:8443/auth/naver/callback";
		this.api20Instance = NaverApi20.instance();
		this.profileUrl = NAVER_PROFILE_URL;
	}
	
	public SnsValue(String service, String clientId, String clientSecret, String redirectUrl) {
		this.service = service;
		this.clientId = clientId;
		this.clientSecret = clientSecret;
		this.redirectUrl = redirectUrl;
		
		this.isNaver = StringUtils.equalsIgnoreCase("naver", this.service);
		if (isNaver) {
			this.api20Instance = NaverApi20.instance();
			this.profileUrl = NAVER_PROFILE_URL;
		} 
//		if(StringUtils.equalsIgnoreCase(service, "naver")) {
//			this.api20Instance = NaverApi20.instance();
//		}
		/*
		else if(StringUtils.equalsIgnoreCase(service, "google")) {
			this.api20Instance = GoogleApi20.instance();
		}*/
	}
}
