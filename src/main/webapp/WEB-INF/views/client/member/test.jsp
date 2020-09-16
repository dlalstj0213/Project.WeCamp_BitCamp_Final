<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	

<section class="breadcrumb-area">
	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-content">
						<h2 class="breadcrumb__title">dashboard</h2>
						<ul class="breadcrumb__list">
							<li class="active__list-item"><a href="index.html">home</a></li>
							<li class="active__list-item">pages</li>
							<li>dashboard</li>
						</ul>
					</div>
					<!-- end breadcrumb-content -->
				</div>
				<!-- end col-lg-12 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end breadcrumb-wrap -->
	<div class="bread-svg">
		<svg viewBox="0 0 500 150" preserveAspectRatio="none">
            <path
				d="M-4.22,89.30 C280.19,26.14 324.21,125.81 511.00,41.94 L500.00,150.00 L0.00,150.00 Z"></path>
        </svg>
	</div>
	<!-- end bread-svg -->
</section>
<!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->
<!-- ================================
    START DASHBOARD AREA
================================= -->
<section class="form-shared padding-top-40px padding-bottom-100px">
	<div class="container">
			<h1>Test 페이지</h1><br/>
			
			<div class="input-group">
			  <div class="input-group-prepend">
				  <select id="category" class="custom-select" id="inputGroupSelect01">
				    <option value="name" selected>이름</option>
				    <option value="tel">전화번호</option>
				  </select>
			  </div>
			   <div class="input-group-prepend">
			    <label class="input-group-text" for="search">검색</label>
			  </div>
			  <input id="search" type="text" onkeyup="searchBookingRecords(false, 1);">
			</div>
			
			<div id="table-part">
			</div>
	</div>
</section>

<script>
	window.onload = function(){
		getTest(false, false, 1);
	}

	function getTest(isAsync, isMore, currentPage){
		console.log("call - getTest");
		let sendData = {
				isMore: isMore,
				currentPage: currentPage
		};
		$.ajax({
			url: "booking_list",
			type: "get",
			async: isAsync,
			data: sendData,
			contentType: "application/json",
			dataType: "HTML",
			success: function(responseData){
				if(responseData == "") {
					location.href = "../login/login.wcc";
				}
				document.getElementById('table-part').innerHTML = responseData;
				console.log("call - getTesst : success");
			}
		});
	}
	
	
	function startUsing(imp_uid, currentPage, isSearch){
		console.log("이용 시작 > "+imp_uid);
		console.log("현재 페이지 > "+currentPage);
		$.ajax({
			url: "start_using",
			type: "post",
			data: imp_uid,
			contentType: "application/json",
			dataType: "JSON",
			success: function(responseData){
				console.log("responseData"+responseData.success);
				console.log("success");
				if(isSearch){
					getTest(true, true, currentPage);
				} else {
					searchBookingRecords(currentPage);
				}
			}
		});
	}
	
	function endUsing(imp_uid, currentPage, isSearch){
		console.log("이용 완료 > "+imp_uid);
		console.log("현재 페이지 > "+currentPage);
		$.ajax({
			url: "end_using",
			type: "post",
			data: imp_uid,
			contentType: "application/json",
			dataType: "JSON",
			success: function(responseData){
				console.log("responseData"+responseData.success);
				console.log("success");
				if(isSearch){
					getTest(true, true, currentPage);
				} else {
					searchBookingRecords(currentPage);
				}
			}
		});
	}
	
	function  searchBookingRecords(isMore, currentPage){
		let sendData = {
				category: document.getElementById('category').value,
				keyword: document.getElementById('search').value,
				isMore: isMore,
				currentPage: currentPage
		};
		$.ajax({
			url: "search_booking_list",
			type: "get",
			data: sendData,
			contentType: "application/json",
			dataType: "HTML",
			success: function(responseData){
				/* if(responseData == "") {
					location.href = "../login/login.wcc";
				} */
				document.getElementById('table-part').innerHTML = responseData;
				console.log("call - getTesst : success");
			}
		});
	}
</script>
