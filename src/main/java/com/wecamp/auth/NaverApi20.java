package com.wecamp.auth;

import com.github.scribejava.core.builder.api.DefaultApi20;

//NaverAPI20은 항상 싱글톤으로 만들어야 한다.
//JVM에 항상 한개의 Object 생성 (외부에서 생성 X)
public class NaverApi20 extends DefaultApi20 implements SnsUrls{
	//instanceholder 를 쓰는 singleton 디자인패턴
	private NaverApi20() {
	}
	
	private static class InstanceHolder{
		private static final NaverApi20 INSTANCE = new NaverApi20();
	}
	
	public static NaverApi20 instance() {
		return InstanceHolder.INSTANCE;
	}

	@Override
	public String getAccessTokenEndpoint() {
		return NAVER_ACCESS_TOKEN;
	}

	@Override
	protected String getAuthorizationBaseUrl() {
		return NAVER_AUTH;
	}
	
	//예전에 해왔던 singleton 디자인패턴
	/*
	private static NaverApi20 _instance;
	private NaverAPI20() {}
	public static NaverApi20 getInstance() {
		if(instance == null) instance = new NaverApi20();
		return instance;
	}
	*/
}
