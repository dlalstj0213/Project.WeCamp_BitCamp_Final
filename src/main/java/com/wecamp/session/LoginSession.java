package com.wecamp.session;

import java.util.LinkedList;

import com.wecamp.model.Member;

public class LoginSession {
	private static LoginSession LOGIN_SESSION = null;
	private static LinkedList<Member> LOGIN_USERS = new LinkedList<Member>();
	//싱글톤
	
	public static synchronized LoginSession getInstance() {
		if(LOGIN_SESSION == null) LOGIN_SESSION = new LoginSession();
		return LOGIN_SESSION;
	}
	
	public LinkedList<Member> getLoginUsers(){
		return LOGIN_USERS;
	}
}
