package com.wecamp.session;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

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
	
//	public void setLoginUsers(LinkedList<Member> newLoginUsers) {
//		LOGIN_USERS = newLoginUsers;
//	}
	
//	public List<Member> getUsers(){
//		return LOGIN_USERS.values().stream()
//				.collect(Collectors.toCollection(ArrayList::new));
//	}
}
