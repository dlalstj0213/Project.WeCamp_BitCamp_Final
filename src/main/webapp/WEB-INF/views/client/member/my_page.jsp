<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	

<style>
.star-rating {
	width: 205px;
}

.star-rating, .star-rating span {
	display: inline-block;
	height: 39px;
	overflow: hidden;
	background: url(star.png) no-repeat;
}

.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}
</style>
<style>
body {
	font-family: 'Varela Round', sans-serif;
}

.modal-login {
	width: 500px;
	margin: 30px auto;
}

.modal-login .modal-content {
	padding: 20px;
	border-radius: 5px;
	border: none;
}

.modal-login .modal-header {
	border-bottom: none;
	position: relative;
	justify-content: center;
}

.modal-login .close {
	position: absolute;
	top: -10px;
	right: -10px;
}

.modal-login h4 {
	color: #636363;
	text-align: center;
	font-size: 26px;
	margin-top: 0;
}

.modal-login .modal-content {
	color: #999;
	border-radius: 1px;
	margin-bottom: 15px;
	background: #fff;
	border: 1px solid #f3f3f3;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 25px;
}

.modal-login .form-group {
	margin-bottom: 20px;
}

.modal-login label {
	font-weight: normal;
	font-size: 13px;
}

.modal-login .form-control {
	min-height: 38px;
	padding-left: 5px;
	box-shadow: none !important;
	border-width: 0 0 1px 0;
	border-radius: 0;
}

.modal-login .form-control:focus {
	border-color: #ccc;
}

.modal-login .input-group-addon {
	max-width: 42px;
	text-align: center;
	background: none;
	border-width: 0 0 1px 0;
	padding-left: 5px;
	border-radius: 0;
}

.modal-login .btn {
	font-size: 16px;
	font-weight: bold;
	background: #19aa8d;
	border-radius: 3px;
	border: none;
	min-width: 140px;
	outline: none !important;
}

.modal-login .btn:hover, .modal-login .btn:focus {
	background: #179b81;
}

.modal-login .hint-text {
	text-align: center;
	padding-top: 5px;
	font-size: 13px;
}

.modal-login .modal-footer {
	color: #999;
	border-color: #dee4e7;
	text-align: center;
	margin: 0 -25px -25px;
	font-size: 13px;
	justify-content: center;
}

.modal-login a {
	color: #fff;
	text-decoration: underline;
}

.modal-login a:hover {
	text-decoration: none;
}

.modal-login a {
	color: #19aa8d;
	text-decoration: none;
}

.modal-login a:hover {
	text-decoration: underline;
}

.modal-login .fa {
	font-size: 21px;
}

.trigger-btn {
	display: inline-block;
	margin: 100px auto;
}


/* test styling*/
.gallery-carousel .gallery-item {
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  border-radius: 2px;
  position: relative;
  margin-bottom: 30px; }
  .gallery-carousel .gallery-item img {
    width: 100%;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px; }

.gallery-carousel .owl-nav div {
  position: absolute;
  top: 41%;
  left: 10px;
  -webkit-transform: translateY(-50%) scale(0.4);
  -moz-transform: translateY(-50%) scale(0.4);
  -ms-transform: translateY(-50%) scale(0.4);
  -o-transform: translateY(-50%) scale(0.4);
  transform: translateY(-50%) scale(0.4);
  width: 45px;
  height: 45px;
  line-height: 45px;
  text-align: center;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  background-color: rgba(255, 107, 107, 0.7);
  color: #fff;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
  opacity: 0;
  visibility: hidden; }
  .gallery-carousel .owl-nav div:hover {
    background-color: #ff6b6b; }
  .gallery-carousel .owl-nav div.owl-next {
    left: auto;
    right: 10px; }
  @media (max-width: 320px) {
    .gallery-carousel .owl-nav div {
      top: 18%;
      -webkit-transform: translateY(0) scale(0.4);
      -moz-transform: translateY(0) scale(0.4);
      -ms-transform: translateY(0) scale(0.4);
      -o-transform: translateY(0) scale(0.4);
      transform: translateY(0) scale(0.4);
      width: 40px;
      height: 40px;
      line-height: 40px; } }

@media (max-width: 425px) {
  .gallery-carousel .owl-dots {
    text-align: center; } }

.gallery-carousel .owl-dots .owl-dot {
  display: inline-block;
  margin-left: 5px;
  margin-right: 5px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  border-radius: 2px;
  opacity: 0.4;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s; }
  @media (max-width: 1199px) {
    .gallery-carousel .owl-dots .owl-dot {
      margin-bottom: 10px; } }
  .gallery-carousel .owl-dots .owl-dot.active, .gallery-carousel .owl-dots .owl-dot:hover {
    opacity: 1; }
  .gallery-carousel .owl-dots .owl-dot img {
    width: 118px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px; }
    @media (max-width: 1199px) {
      .gallery-carousel .owl-dots .owl-dot img {
        width: 110px; } }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
      .gallery-carousel .owl-dots .owl-dot img {
        width: 105px; } }

.gallery-carousel:hover .owl-nav div {
  -webkit-transform: translateY(-50%) scale(1);
  -moz-transform: translateY(-50%) scale(1);
  -ms-transform: translateY(-50%) scale(1);
  -o-transform: translateY(-50%) scale(1);
  transform: translateY(-50%) scale(1);
  opacity: 1;
  visibility: visible; }
</style>

<script>
$(function(){
	if(${msg ne null}){
		/* ne는 ' != ' 를 의미 */
		alert('${msg}');
	};
	
	if($("#pwd-form").submit(function(){
			if($("#pwd1").val() !== $("#pwd2").val()){
				alert("비밀번호가 다릅니다. 정확하게 입력해 주세요.");
				$("#pwd1").val("").focus();
				$("#pwd2").val("");
				return false;
			}else if($("#pwd1").val().length < 8) {
				alert("비밀번호는 8자 이상으로 설정해 주세요.");
				$("#pwd1").val("").focus();
				$("#pwd2").val("");
				return false;
			}else if($.trim($("#pwd1").val()) !== $("#pwd1").val()) {
				alert("공백은 입력이 불가능합니다.");
				$("#pwd1").val("").focus();
				$("#pwd2").val("");
				return false;
			}
		}) //end function
	); // if
	
	if($("#delete-form").submit(function(){
			if(!confirm("정말 탈퇴하시겠습니까?")){
				return false;
			}
		}) //end function
	); // if
})
</script>
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
<section class="dashboard-area padding-top-40px padding-bottom-90px">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div
					class="dashboard-nav d-flex justify-content-between align-items-center mb-4">
					<nav>
						<div class="nav nav-tabs border-0" id="nav-tab" role="tablist">

							<a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1 active"
								id="nav-profile-tab" data-toggle="tab" href="#nav-profile"
								role="tab" aria-controls="nav-profile" aria-selected="true">
								<span class="la la-user"></span> 프로필
							</a> 
							<a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1"
								id="nav-listing-tab" data-toggle="tab" href="#nav-listing"
								role="tab" aria-controls="nav-listing" aria-selected="false"
								onclick="call_booking_info();">
								<span class="la la-list-alt"></span> 예약내역
							</a>
							<input id="next-page" type="hidden" value=""> 
							<a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1"
								id="nav-bookmark-tab" data-toggle="tab" href="#nav-bookmarks"
								role="tab" aria-controls="nav-bookmarks" aria-selected="false"
								onclick="call_heart_list();">
								<span class="la la-bookmark-o"></span> 찜 목록
							</a> 
							<c:if test="${member.a_no ne 1}">
							<a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1"
								id="nav-bookmark-tab" data-toggle="tab" href="#nav-camping"
								role="tab" aria-controls="nav-bookmarks" aria-selected="false"
								onclick="owner_info();">
								<!-- onclick="owner_info(); -->
								<span class="la la-gear"></span> 캠핑장 정보
							</a>
							</c:if>
						</div>
					</nav>
					<div class="btn-box">
						<!-- <a href="add-listing.html" class="theme-btn"><span class="la la-plus-circle"></span> create listing</a>
                        <a href="index.html" class="theme-btn"><span class="la la-power-off"></span> sign out</a> -->
					</div>
				</div>
				<!-- end dashboard-nav -->
			</div>
			<!-- end col-lg-12 -->
			<div class="col-lg-12">
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade" id="nav-listing" role="tabpanel"
						aria-labelledby="nav-listing-tab">
						<div id="booking-box" class="row">
						</div>
						
						<!-- Load More Start -->
						<div class="section-block"></div>
						<div class="button-shared padding-top-40px text-center">
						    <button type="button" id="load-btn" class="theme-btn border-0" onclick="paging()">
						        <span class="la la-refresh"></span> Load More
						    </button>
						</div><!-- end button-shared -->
						<!-- Load More End -->
						
						<!-- end row -->
					</div>

						
					<div class="tab-pane fade show active" id="nav-profile"
						role="tabpanel" aria-labelledby="nav-profile-tab">
						<div class="row">
							<div class="col-lg-4">
								<div class="user-profile-action">
									<!-- 프로필 사진 부분 주석   
                                    
                                    <div class="user-pro-img mb-4">
                                        <img src="images/team2.jpg" alt="user-image">
                                        <div class="dropdown">
                                            <button class="theme-btn edit-btn dropdown-toggle border-0 after-none" type="button" id="editImageMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="la la-photo"></i> Edit
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="editImageMenu">
                                                <div class="upload-btn-box">
                                                    <form action="#" method="post" enctype="multipart/form-data">
                                                        <input type="file" name="files[]" id="filer_input" multiple="multiple">
                                                        <button class="theme-btn border-0 w-100 button-success" type="submit" value="submit">
                                                            Save changes
                                                        </button>
                                                    </form>
                                                </div>
                                                <div class="btn-box mt-3">
                                                    <button class="theme-btn border-0 w-100">Remove Photo</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->

									<!-- /////////////////////////// 유저 왼쪽 정보 ///////////////////////////// -->
									<!-- hidden-Data -->
									<input type="hidden" id="nick" value="${member.nickname}">

									<div class="user-details">
										<h2 class="user__name widget-title pb-2">${member.name}</h2>
										<div class="section-heading">
											<p class="sec__desc font-size-15 line-height-24">보조 설명 보조
												설명 보조 설명 보조 설명 보조 설명 보조 설명</p>


										</div>
										<ul class="list-items mt-3">
											<li><span class="la la-github-alt"></span> 닉네임 :
												${member.nickname}</li>
											<li class="text-lowercase"><span class="la la-diamond"></span>
												등급 : ${member.grade }</li>
											<li class="text-lowercase"><span
												class="la la-cc-diners-club"></span> 포인트 : ${member.point }
											</li>
										</ul>
										
									</div>
									<!-- end user-details -->
								</div>
								<!-- end user-profile-action -->
							</div>
							<!-- end col-lg-4 -->

							<!-- /////////////////////////// 유저 오른쪽 정보 ///////////////////////////// -->
							<div class="col-lg-8">
								<div class="user-form-action">
									<div class="billing-form-item">
										<div class="billing-title-wrap">
											<h3 class="widget-title pb-0">회원 정보</h3>
											<div class="title-shape margin-top-10px"></div>
										</div>
										<!-- billing-title-wrap -->
										<div class="billing-content">
											<div class="contact-form-action">
												<form method="post" action="update_member.wcc">
													<div class="input-box">
														<label class="label-text">이름 </label>
														<div class="form-group">
															<input id="user-name" class="form-control" type="text"
																name="name" value="${member.name } " readonly>
														</div>
													</div>
													<div id="test"></div>
													<!-- <div class="input-box">
                                                        <label class="label-text">성별 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="여자 " readonly>
                                                        </div>
                                                    </div> -->
													<div class="input-box">
														<label class="label-text">생년월일 </label>
														<div class="form-group">

															<input class="form-control" type="text" name=""
																value="${member.birth }" readonly>
														</div>
													</div>
													<div class="input-box">
														<label class="label-text">이메일 주소 </label>
														<div class="form-group">

															<input class="form-control" type="text" name="email"
																value="${member.email }" readonly>
														</div>
													</div>
													<!-- <div class="input-box">
                                                        <label class="label-text">전화번호 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="01011112222" readonly>
                                                        </div>
                                                    </div> -->
													<!-- <div class="input-box">
                                                        <label class="label-text">주소 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="서울시 불광어쩌고 연신" readonly>
                                                        </div>
                                                    </div> -->
													<div class="btn-box">
														<input class="theme-btn button-success border-0 update"
															type="button" onclick="getUploadTags();" value="수정">
														<a href="#pwdModal" class="theme-btn border-0"
															type="button" data-toggle="modal"> 비밀번호 변경 </a>
													</div>
												</form>
												<!-- Modal HTML -->
												<div id="pwdModal" class="modal fade">
													<form id="pwd-form" action="change_pwd.wcc" method="post">
														<div class="modal-dialog modal-login">
															<div class="modal-content">
																<div class="modal-header">
																	<h4 class="modal-title">비밀번호 변경</h4>

																	<button type="button" class="close"
																		data-dismiss="modal" aria-hidden="true">&times;</button>
																</div>
																<div style="font-size: 12px; text-align: center">
																	비밀번호를 변경하기 위해서 기존 비밀번호와 새로 설정할 비밀번호를 입력해 주세요.</div>
																<div class="modal-body">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"></span> <input
																				type="email" id="member-email" class="form-control" name="email"
																				readonly value="${member.email}">

																		</div>
																			<input type="hidden" value="${member.email}" id="member-email-2">
																		<div class="input-group">
																			<span class="input-group-addon"></span> <input
																				type="password" class="form-control" name="old-pwd"
																				placeholder="기존 비밀번호를 입력해 주세요">

																		</div>
																		<div class="input-group">
																			<span class="input-group-addon"></span> <input
																				id="pwd1" type="password" class="form-control"
																				name="pwd" placeholder="새로 설정할 비밀번호를 입력해 주세요">
																		</div>
																		<div class="input-group">
																			<span class="input-group-addon"></span> <input
																				id="pwd2" type="password" class="form-control"
																				placeholder="새로 설정할 비밀번호를 한 번 더 정확하게 입력해 주세요">
																		</div>
																	</div>
																	<div class="form-group">
																		<button type="submit" class="theme-btn border-0 w-100">비밀번호
																			변경</button>

																	</div>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
											<!-- end contact-form-action -->
										</div>
										<!-- end billing-content -->
									</div>
								</div>
								<!-- end user-form-action -->
								<div class="delete-account-info">
									<div class="billing-form-item">
										<div class="billing-title-wrap">
											<h3 class="widget-title pb-0 color-text">계정 삭제</h3>
											<div class="title-shape margin-top-10px"></div>
										</div>
										<!-- billing-title-wrap -->
										<!-- <form id="deleteform" action="" method="post"> -->
										<div class="delete-info-content p-4">
											<p class="mb-3">
												<span class="text-warning">주의</span> 계정 삭제와 동시에 모든 정보는
												말소됩니다.
											</p>

											<a href="#deleteModal" class="theme-btn border-0"
												type="button" data-toggle="modal"> 계정 삭제 </a>

											<!-- Modal HTML -->
											<div id="deleteModal" class="modal fade">
												<form id="delete-form" action="leave.wcc" method="post">
													<div class="modal-dialog modal-login">
														<div class="modal-content">
															<div class="modal-header">
																<h4 class="modal-title">회원 탈퇴</h4>

																<button type="button" class="close" data-dismiss="modal"
																	aria-hidden="true">&times;</button>
															</div>
															<div style="font-size: 12px; text-align: center">
																비밀번호를 알맞게 입력하시면 최종적으로 회원 탈퇴가 진행됩니다.</div>
															<div class="modal-body">
																<div class="form-group">
																	<div class="input-group">
																		<span class="input-group-addon"></span> <input
																			class="form-control" name="email" readonly
																			value="${member.email}">

																	</div>
																	<div class="input-group">
																		<span class="input-group-addon"></span> <input
																			type="password" class="form-control" name="pwd"
																			placeholder="비밀번호를 정확하게 입력해 주세요">
																	</div>
																</div>
																<div class="form-group">
																	<button type="submit" class="theme-btn border-0 w-100">회원
																		탈퇴</button>

																</div>
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>
										<!-- end delete-info-content -->
										<!-- </form> -->
									</div>
								</div>
								<!-- end delete-account-info -->
							</div>
							<!-- end col-lg-8 -->
						</div>
					</div>
					
					<!-- Heart -->
					<div class="tab-pane fade" id="nav-bookmarks" role="tabpanel"
						aria-labelledby="nav-bookmark-tab">
						<div id="heart-box" class="row">
						</div>
						<!-- Load More Start -->
						<div class="section-block"></div>
						<div class="button-shared padding-top-40px text-center">
						    <button type="button" id="load-btn-heart" class="theme-btn border-0" onclick="heart_paging()">
						        <span class="la la-refresh"></span> Load More
						    </button>
						</div><!-- end button-shared -->
						<!-- Load More End -->
						<!-- end row -->
					</div>




					<div class="tab-pane fade" id="nav-camping" role="tabpanel"
						aria-labelledby="nav-profile-tab">
						<div class="row">
							<div class="col-lg-4">
								<div class="user-profile-action">
									<!-- 프로필 사진 부분 주석   
                                    
                                    <div class="user-pro-img mb-4">
                                        <img src="images/team2.jpg" alt="user-image">
                                        <div class="dropdown">
                                            <button class="theme-btn edit-btn dropdown-toggle border-0 after-none" type="button" id="editImageMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="la la-photo"></i> Edit
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="editImageMenu">
                                                <div class="upload-btn-box">
                                                    <form action="#" method="post" enctype="multipart/form-data">
                                                        <input type="file" name="files[]" id="filer_input" multiple="multiple">
                                                        <button class="theme-btn border-0 w-100 button-success" type="submit" value="submit">
                                                            Save changes
                                                        </button>
                                                    </form>
                                                </div>
                                                <div class="btn-box mt-3">
                                                    <button class="theme-btn border-0 w-100">Remove Photo</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->

									<!-- /////////////////////////// 유저 왼쪽 정보 ///////////////////////////// -->

									<div class="user-details">
										<h2 class="user__name widget-title pb-2">${member.name}</h2>
										<div class="section-heading">
											<p class="sec__desc font-size-15 line-height-24">사업자 전용
												관리페이지입니다.</p>


										</div>
										<ul class="list-items mt-3">
											<!-- <li><span class="la la-github-alt"></span> 닉네임 : 조이 정 </li>
                                            <li class="text-lowercase"><span class="la la-diamond"></span> 등급 : silver </li>
                                            <li class="text-lowercase"><span class="la la-cc-diners-club"></span> 포인트 : 2000P </li> -->
										</ul>
										<div class="user-edit-form mt-4">
											<div class="dropdown">
												<button
													class="theme-btn edit-form-btn shadow-none w-100 dropdown-toggle after-none"
													type="button" id="editForm" data-toggle="dropdown"
													aria-haspopup="true" aria-expanded="false">
													<i class="la la-pencil-square-o"></i> Edit
												</button>
												<div class="dropdown-menu" aria-labelledby="editForm">
													<div class="contact-form-action">
														<div class="input-box">
															<label class="label-text">Name</label>
															<div class="form-group">
																<span class="la la-user form-icon"></span> <input
																	class="form-control" type="text" name="name"
																	placeholder="Enter your name">
															</div>
														</div>
														<!-- end input-box -->
														<div class="input-box">
															<label class="label-text">Bio Data</label>
															<div class="form-group">
																<span class="la la-pencil form-icon"></span>
																<textarea class="message-control form-control"
																	name="message" placeholder="Add a bio"></textarea>
															</div>
														</div>
														<!-- end input-box -->
														<div class="input-box">
															<div class="form-group">
																<span class="la la-map-marker form-icon"></span> <input
																	class="form-control" type="text" name="location"
																	placeholder="Location">
															</div>
														</div>
														<!-- end input-box -->
														<div class="input-box">
															<div class="form-group">
																<span class="la la-phone form-icon"></span> <input
																	class="form-control" type="text" name="number"
																	placeholder="Number">
															</div>
														</div>
														<!-- end input-box -->
														<div class="input-box">
															<div class="form-group">
																<span class="la la-envelope-o form-icon"></span> <input
																	class="form-control" type="email" name="email"
																	placeholder="Email Address">
															</div>
														</div>
														<!-- end input-box -->
														<div class="input-box">
															<div class="form-group">
																<span class="la la-youtube-play form-icon"></span> <input
																	class="form-control" type="text" name="youtube"
																	placeholder="Youtube URL">
															</div>
														</div>
														<!-- end input-box -->
														<div class="input-box">
															<div class="form-group">
																<span class="la la-globe form-icon"></span> <input
																	class="form-control" type="text" name="website"
																	placeholder="Website">
															</div>
														</div>
														<!-- end input-box -->
														<div class="btn-box">
															<button type="button"
																class="theme-btn border-0 button-success">save
																changes</button>
															<button type="button" class="theme-btn border-0">Cancel</button>
														</div>
														<!-- end btn-box -->
													</div>
													<!-- end contact-form-action -->
												</div>
											</div>
										</div>
									</div>
									<!-- end user-details -->
								</div>
								<!-- end user-profile-action -->
							</div>
							<!-- end col-lg-4 -->

							<!-- /////////////////////////// 유저 오른쪽 정보 ///////////////////////////// -->
							<div class="col-lg-8" id="owner-info">
						</div>
					</div>
				</div>
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>

<!-- end dashboard-area -->
<!-- ================================
    END DASHBOARD AREA
================================= -->
<script src="../js/my-page.js"></script>
<script src="../js/booking-info.js"></script>
<script src="../js/review.js"></script>
<script src="../js/heart-list.js"></script>
<script>
    $(document).ready(function() {
        $("#modal_show").click(function() {
            $("#exampleModal").modal("show");
        });

        $("#close_modal").click(function() {
            $("#exampleModal").modal("hide");
        });
    });
</script>
