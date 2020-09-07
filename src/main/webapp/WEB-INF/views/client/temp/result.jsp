<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<h1>로그인 결과값</h1>
<h3>${ member }</h3>
<h4><a href="../delete_token?accessToken=${member.accessToken}">토큰삭제</a></h4>
