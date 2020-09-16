package com.wecamp.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import com.wecamp.model.Member;

import lombok.extern.log4j.Log4j;

@Log4j
public class SessionListener implements HttpSessionBindingListener{
	// 싱글톤 객체를 담을 변수
	private static SessionListener SESSION_LISTENER = null;

	// 로그인한 접속자를 저장한 LINKEDLIST 
	private static HashMap<HttpSession, Member> LOGIN_USERS = new HashMap<HttpSession, Member>();

	// 싱글톤 처리
	public static synchronized SessionListener getInstance() {
		if(SESSION_LISTENER == null) {
			SESSION_LISTENER = new SessionListener();
		}
		return SESSION_LISTENER;
	}


	// 세션이 연결시 호출 (해시테이블에 접속자 저장)
	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		log.info("########ValueBound(세션연결됨)########");
		Member member = (Member)event.getSession().getAttribute("member");
		TimeUtil timeUtil = new TimeUtil();
		String loginTime = timeUtil.getDateTime();
		member.setLoginTime(loginTime);
		member.setLoginCount(member.getLoginCount()+1);
		if(LOGIN_USERS.size() == 0) {
			LOGIN_USERS.put(event.getSession(), member);
		} else {
			Iterator<HttpSession> itr = LOGIN_USERS.keySet().iterator();
			boolean isSameUser = false;
			while(itr.hasNext()) {
				HttpSession session = itr.next();
				Member other = LOGIN_USERS.get(session);
				if(other.getEmail().equals(member.getEmail())) {
					isSameUser = true;
					break;
				}
			}
			if(!isSameUser) LOGIN_USERS.put(event.getSession(), member);
		}
	}

	// 세션이 끊겼을시 호출
	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		log.info("########ValueBound(세션끊어짐)########");
		Iterator<HttpSession> itr = LOGIN_USERS.keySet().iterator();
		while(itr.hasNext()) {
			HttpSession session = itr.next();
			Member other = LOGIN_USERS.get(session);
			if(other.getEmail().equals(event.getName())) {
				if(other.getLoginCount() <= 0) {
					itr.remove();
					break;
				}
				other.setLoginCount(other.getLoginCount()-1);
			}
		}
	}

	/*
	 * 현재 접속한 총 사용자 수
	 * @return int  현재 접속자 수
	 */
	public int getUserCount(){
		return LOGIN_USERS.size();
	}
	/*
	 * 현재 접속중인 모든 사용자리스트를 리턴
	 * @return list
	 */
	public List<Member> getUsers(){
		return LOGIN_USERS.values().stream()
				.collect(Collectors.toCollection(ArrayList::new));
	}

	public void removeSession(HttpSession session) {
		session.invalidate();
	}

	public void setSession(HttpSession session, Member member) {
		//이순간에 Session Binding이벤트가 일어나는 시점
		//name값으로 userId, value값으로 자기자신(HttpSessionBindingListener를 구현하는 Object)
		session.setAttribute(member.getEmail(), this); //login에 자기자신을 집어넣는다.
	}
}
