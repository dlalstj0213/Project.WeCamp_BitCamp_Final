package com.wecamp.service.member;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wecamp.model.Member;


public interface MemberService {
	//아이디(이메일) 중복 체크
	public void emailCheck(String email, HttpServletResponse response) throws Exception;
	//회원가입
	public int signUp(Member member, HttpServletResponse response) throws Exception;
	//이메일 인증키 생성 
	public String create_key() throws Exception;
	//이메일 발송 
	public void send_mail(Member member, String div) throws Exception;
	//회원 인증
	public void approval_member(Member member, HttpServletResponse response) throws Exception;
	//로그인 
	Member login(Member member, HttpServletResponse response) throws Exception;
	//로그아웃
	void logout(HttpServletResponse response) throws Exception;
	//비밀번호 찾기 
	void find_pwd(HttpServletResponse response, Member member) throws Exception;
	//회원탈퇴(새로운 탈퇴회원 추가 후 회원 삭제)
	boolean delete_member(Member member, HttpSession session, HttpServletResponse response);
	//비밀번호 변경
	Member update_pwd(Member member, String old_pwd, HttpServletResponse response);
}
