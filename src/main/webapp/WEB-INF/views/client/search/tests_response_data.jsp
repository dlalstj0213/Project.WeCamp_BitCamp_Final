<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test</title>
</head>
<body>
	<h1>SHOW RESPONSE DATA</h1>
	<c:forEach items="${vo.list}" var="list">
		<p>캠핑장 일련번호 : ${list.camp_idx}</p>
		<p>캠핑장명 : ${list.camp_name}</p>
		<p>캠핑장명 : ${list.intro}</p>
		<p>주소 : ${list.address}</p>
		<p>캠핑장전화번호 : ${list.camp_tel}</p>
		<p>사이트수 : ${list.site_num}</p>
		<p>1일최대수용인원 : ${list.full_num}</p>
		<p>주차장수 : ${list.parking}</p>
		<p>편의시설 : ${list.conv}</p>
		<p>안전시설 : ${list.sec_conv}</p>
		<p>기타부대시설 : ${list.etc_conv}</p>
		<p>관리기관전화번호 : ${list.agency_tel}</p>
		<p>관리기관명 : ${list.agency_name}</p>
		<p>예약횟수 : ${list.total_booking}</p>
		<p>이미지 파일 번호 : ${list.img_idx}</p>
		<p>이미지 파일 이름 : ${list.fname}</p>
		<p>이미지 파일 원본이름 : ${list.ofname}</p>
		<p>이미지 파일 크기 : ${list.fsize}</p>
		<p>이미지 파일 구분 : ${list.division}</p>
		<p>최저가 : ${list.min_fee}</p>
	</c:forEach>
	
	<h2>SHOW PAGING DATA</h2>
		<p>한 페이지 당 게시글 수 : ${vo.page.pageSize}</p>
		<p>한 블럭당 페이지 수 : ${vo.page.rangeSize}</p>
		<p>현재 페이지 : ${vo.page.currentPage}</p>
		<p>현재 블럭 : ${vo.page.currentRange}</p>
		<p>총 게시글 수 : ${vo.page.listCount}</p>
		<p>총 페이지 수 : ${vo.page.pageCount}</p>
		<p>총 블럭 수 : ${vo.page.rangeCount}</p>
		<p>시작 페이지 : ${vo.page.startPage}</p>
		<p>끝 페이지 : ${vo.page.endPage}</p>
		<p>시작 행 : ${vo.page.startRow}</p>
		<p>끝 행 : ${vo.page.endRow}</p>
		<p>이전 페이지 : ${vo.page.prevPage}</p>
		<p>다음 페이지 : ${vo.page.nextPage}</p>
</body>
</html>