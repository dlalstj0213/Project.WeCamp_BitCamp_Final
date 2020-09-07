<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <style>
	.star-rating { width:205px; }
	.star-rating,.star-rating span { display:inline-block; height:39px; overflow:hidden; background:url(star.png)no-repeat; }
	.star-rating span{ background-position:left bottom; line-height:0; vertical-align:top; }
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
</style>
<script>
$(function(){
	if(${msg ne null}){
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
                    </div><!-- end breadcrumb-content -->
                </div><!-- end col-lg-12 -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end breadcrumb-wrap -->
    <div class="bread-svg">
        <svg viewBox="0 0 500 150" preserveAspectRatio="none">
            <path d="M-4.22,89.30 C280.19,26.14 324.21,125.81 511.00,41.94 L500.00,150.00 L0.00,150.00 Z"></path>
        </svg>
    </div><!-- end bread-svg -->
</section><!-- end breadcrumb-area -->
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
                <div class="dashboard-nav d-flex justify-content-between align-items-center mb-4">
                    <nav>
                        <div class="nav nav-tabs border-0" id="nav-tab" role="tablist">
                            
                            <a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1 active" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="true">
                                <span class="la la-user"></span> 프로필
                            </a>
                            
                            <a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1" id="nav-listing-tab" data-toggle="tab" href="#nav-listing" role="tab" aria-controls="nav-listing" aria-selected="false">
                                <span class="la la-list-alt"></span> 예약내역
                            </a>
                            
                            <a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1" id="nav-bookmark-tab" data-toggle="tab" href="#nav-bookmarks" role="tab" aria-controls="nav-bookmarks" aria-selected="false">
                                <span class="la la-bookmark-o"></span> 찜 목록
                            </a>
                            
                            <a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1" id="nav-bookmark-tab"
                             data-toggle="tab" href="#nav-camping" role="tab"
                              aria-controls="nav-bookmarks" aria-selected="false"
                              onclick="test_css();">
                                <span class="la la-gear"></span> 캠핑장 정보 
                            </a>
                        </div>
                    </nav>
                    <div class="btn-box">
                        <!-- <a href="add-listing.html" class="theme-btn"><span class="la la-plus-circle"></span> create listing</a>
                        <a href="index.html" class="theme-btn"><span class="la la-power-off"></span> sign out</a> -->
                    </div>
                </div><!-- end dashboard-nav -->
            </div><!-- end col-lg-12 -->
            <div class="col-lg-12">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade" id="nav-listing" role="tabpanel" aria-labelledby="nav-listing-tab">
                        <div class="row">
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img25.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">Favorite Place Food Bank</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <!-- /////////////////////////// 리뷰 작 버튼 열기 ///////////////////////////// -->
                                                <!-- Button trigger modal -->
											    <button type="button" class="theme-btn button-success border-0" id="modal_show"><span class="la la-pencil-square"></span>
											        리뷰 작성
											    </button>
											    
											    <!-- Modal -->
											    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
											        <div class="modal-dialog" role="document">
											            <div class="modal-content">
											                <div class="modal-header">
											                    <h5 class="modal-title" id="exampleModalLabel">REVIEW</h5>
											                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
											                        <span aria-hidden="true">&times;</span>
											                    </button>
											                </div>
											                <div class="modal-body">
											                <article>
													
															<div class="container" role="main">
													
																<h4 align="center">랄라불라 캠핑장</h4>
													
																<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard">
													
													
																	<div class="mb-3">
													
																		<label for="reg_id">작성자</label>
													
																		<input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="조이정" readonly>
													
																	</div>
																	
																	
																	<div class="mb-3">
																	<label for="reg_id">별점 주기</label>
																	<div>
																			<span class='la la-star'></span>
																			<span class='la la-star'></span>
																			<span class='la la-star'></span>
																			<span class='la la-star'></span>
																			<span class='la la-star'></span>
																	</div>
																	</div>
													
																	
													
																	<div class="mb-3">
													
																		<label for="content">내용</label>
													
																		<textarea class="form-control" rows="5" name="content" id="content" placeholder="이번 캠핑은 어떠셨나요? 리뷰를 작성해 주세요!" ></textarea>
													
																	</div>
																</form>
													
																
													
															</div>
													
														</article>
											                </div>
											                <div class="modal-footer">
											                    <button type="button" class="btn btn-primary">작성 완료</button>
											                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
											                </div>
											            </div>
											        </div>
											    </div>
											 
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
											    
											    <!-- /////////////////////////// 리뷰 작성 버튼 닫기 ///////////////////////////// -->
											    
											    <!-- /////////////////////////// 리뷰 삭제 버튼 열기 ///////////////////////////// -->
											    <!-- Button trigger modal -->
												<button type="button" class="theme-btn border-0" data-toggle="modal" data-target="#exampleModal2"><span class="la la-trash"></span>
												  삭제
												</button>
												
												<!-- Modal -->
												<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
												  <div class="modal-dialog" role="document">
												    <div class="modal-content">
												      <div class="modal-header">
												        <h5 class="modal-title" id="exampleModalLabel">리뷰 삭제</h5>
												        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
												          <span aria-hidden="true">&times;</span>
												        </button>
												      </div>
												      <div class="modal-body">
												        리뷰를 정말 삭제하시겠습니까?
												      </div>
												      <div class="modal-footer">
												      	<button type="button" class="btn btn-primary">삭제하기</button>
												       	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
												      </div>
												    </div>
												  </div>
												</div>
											   <!-- /////////////////////////// 리뷰 삭제 버튼 닫기 ///////////////////////////// -->
											    
											    
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img26.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">beach blue boardwalk</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn button-success border-0"><span class="la la-pencil-square"></span>리뷰 쓰기</button>
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img27.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">hotel govendor</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn button-success border-0"><span class="la la-pencil-square"></span>리뷰 쓰기</button>
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img28.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">Favorite Place Food Bank</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn button-success border-0"><span class="la la-pencil-square"></span>리뷰 쓰기</button>
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img29.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">beach blue boardwalk</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn button-success border-0"><span class="la la-pencil-square"></span>리뷰 쓰기</button>
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img30.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">hotel govendor</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn button-success border-0"><span class="la la-pencil-square"></span>리뷰 쓰기</button>
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                        </div><!-- end row -->
                    </div>
                    <div class="tab-pane fade show active" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
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
                                            <p class="sec__desc font-size-15 line-height-24">
                                               보조 설명  보조 설명  보조 설명  보조 설명  보조 설명  보조 설명  
                                            </p>
                                            
                                            
                                        </div>
                                        <ul class="list-items mt-3">
                                            <li><span class="la la-github-alt"></span> 닉네임 : ${member.nickname} </li>
                                            <li class="text-lowercase"><span class="la la-diamond"></span> 등급 : ${member.grade } </li>
                                            <li class="text-lowercase"><span class="la la-cc-diners-club"></span> 포인트 : ${member.point } </li>
                                        </ul>
                                       <div class="user-edit-form mt-4">
                                           <div class="dropdown">
                                               <button class="theme-btn edit-form-btn shadow-none w-100 dropdown-toggle after-none" type="button" id="editForm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                   <i class="la la-pencil-square-o"></i> Edit
                                               </button>
                                               <div class="dropdown-menu" aria-labelledby="editForm">
                                                   <div class="contact-form-action">
                                                       <div class="input-box">
                                                           <label class="label-text">Name</label>
                                                           <div class="form-group">
                                                               <span class="la la-user form-icon"></span>
                                                               <input class="form-control" type="text" name="name" placeholder="Enter your name">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <label class="label-text">Bio Data</label>
                                                           <div class="form-group">
                                                               <span class="la la-pencil form-icon"></span>
                                                               <textarea class="message-control form-control" name="message" placeholder="Add a bio"></textarea>
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-map-marker form-icon"></span>
                                                               <input class="form-control" type="text" name="location" placeholder="Location">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-phone form-icon"></span>
                                                               <input class="form-control" type="text" name="number" placeholder="Number">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-envelope-o form-icon"></span>
                                                               <input class="form-control" type="email" name="email" placeholder="Email Address">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-youtube-play form-icon"></span>
                                                               <input class="form-control" type="text" name="youtube" placeholder="Youtube URL">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-globe form-icon"></span>
                                                               <input class="form-control" type="text" name="website" placeholder="Website">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="btn-box">
                                                           <button type="button" class="theme-btn border-0 button-success">save changes</button>
                                                           <button type="button" class="theme-btn border-0">Cancel</button>
                                                       </div><!-- end btn-box -->
                                                   </div><!-- end contact-form-action -->
                                               </div>
                                           </div>
                                       </div>
                                    </div><!-- end user-details -->
                                </div><!-- end user-profile-action -->
                            </div><!-- end col-lg-4 -->
                            
                            <!-- /////////////////////////// 유저 오른쪽 정보 ///////////////////////////// -->
                            <div class="col-lg-8">
                                <div class="user-form-action">
                                    <div class="billing-form-item">
                                        <div class="billing-title-wrap">
                                            <h3 class="widget-title pb-0">회원 정보 </h3>
                                            <div class="title-shape margin-top-10px"></div>
                                        </div><!-- billing-title-wrap -->
                                        <div class="billing-content">
                                            <div class="contact-form-action">
                                                <form method="post">
                                                    <div class="input-box">
                                                        <label class="label-text">이름 </label>
                                                        <div class="form-group">
                                                            <input id="user-name" class="form-control" type="text" name="text" placeholder="${member.name } " readonly>
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
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="${member.birth }" >
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">이메일 주소 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="${member.email }" readonly>
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
                                                        <input class="theme-btn button-success border-0 update" type="button" onclick="getUploadTags();" value="수정">
                                                        <a href="#pwdModal" class="theme-btn border-0" type="button" data-toggle="modal"> 비밀번호 변경 </a>
                                                    </div>
                                                </form>
                                                <!-- Modal HTML -->
												<div id="pwdModal" class="modal fade">
													<form id="pwd-form" action="change_pwd.wcc" method="post">
														<div class="modal-dialog modal-login">
															<div class="modal-content">
															<div class="modal-header">
																<h4 class="modal-title"> 비밀번호 변경 </h4>
										
																<button type="button" class="close" data-dismiss="modal"
																	aria-hidden="true">&times;</button>
															</div>
															<div style="font-size: 12px; text-align: center">
																비밀번호를 변경하기 위해서 기존 비밀번호와 새로 설정할 비밀번호를 입력해 주세요. </div>
															<div class="modal-body">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"></span> 
																			<input
																				type="email"
																				class="form-control" name="email"
																				readonly
																				value="${member.email}">
																			
																		</div>
																		<div class="input-group">
																			<span class="input-group-addon"></span> 
																			<input
																				type="password"
																				class="form-control" name="old-pwd"
																				placeholder="기존 비밀번호를 입력해 주세요">
																			
																		</div>
																		<div class="input-group">
																			<span class="input-group-addon"></span>
																				<input
																					id="pwd1"
																					type="password"
																					class="form-control" name="pwd"
																					placeholder="새로 설정할 비밀번호를 입력해 주세요">
																		</div>
																		<div class="input-group">
																			<span class="input-group-addon"></span>
																				<input
																					id="pwd2"
																					type="password"
																					class="form-control" name="pwd2"
																					placeholder="새로 설정할 비밀번호를 한 번 더 정확하게 입력해 주세요">
																		</div>
																	</div>
																	<div class="form-group">
																		<button type="submit" class="theme-btn border-0 w-100">비밀번호 변경</button>
										
																	</div>
															</div>
														</div>
													</div>
												</form>
											</div>
                                            </div><!-- end contact-form-action -->
                                        </div><!-- end billing-content -->
                                    </div>
                                </div><!-- end user-form-action -->
                                <div class="delete-account-info">
                                    <div class="billing-form-item">
                                        <div class="billing-title-wrap">
                                            <h3 class="widget-title pb-0 color-text">계정 삭제 </h3>
                                            <div class="title-shape margin-top-10px"></div>
                                        </div><!-- billing-title-wrap -->
                                        <!-- <form id="deleteform" action="" method="post"> -->
	                                        <div class="delete-info-content p-4">
	                                            <p class="mb-3"><span class="text-warning">주의</span> 계정 삭제와 동시에 모든 정보는 말소됩니다.</p>
	                                            
	                                            	<a href="#deleteModal" class="theme-btn border-0" type="button" data-toggle="modal"> 계정 삭제 </a>

												<!-- Modal HTML -->
												<div id="deleteModal" class="modal fade">
													<form id="delete-form" action="leave.wcc" method="post">
													<div class="modal-dialog modal-login">
														<div class="modal-content">
															<div class="modal-header">
																<h4 class="modal-title">회원 탈퇴 </h4>

																<button type="button" class="close" data-dismiss="modal"
																	aria-hidden="true">&times;</button>
															</div>
															<div style="font-size: 12px; text-align: center">
																비밀번호를 알맞게 입력하시면 최종적으로 회원 탈퇴가 진행됩니다. </div>
															<div class="modal-body">
																	<div class="form-group">
																		<div class="input-group">
																			<span class="input-group-addon"></span> 
																			<input
																				class="form-control" name="email"
																				readonly value="${member.email}">
																			
																		</div>
																		<div class="input-group">
																			<span class="input-group-addon"></span>
																				<input
																					type="password" class="form-control" name="pwd"
																					placeholder="비밀번호를 정확하게 입력해 주세요">
																		</div>
																	</div>
																	<div class="form-group">
																		<button type="submit" class="theme-btn border-0 w-100">회원 탈퇴</button>

																	</div>
															</div>
														</div>
													</div>
													</form>
												</div>
	                                        </div><!-- end delete-info-content -->
                                        <!-- </form> -->
                                    </div>
                                </div><!-- end delete-account-info -->
                            </div><!-- end col-lg-8 -->
                        </div>
                    </div>
					
                    <div class="tab-pane fade" id="nav-bookmarks" role="tabpanel" aria-labelledby="nav-bookmark-tab">
                        <div class="row">
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img25.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">랄라불라 캠핑장</h4>
                                                <p class="card-sub"><span class="la la-map-marker"></span>부산시 부산행 반도</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                            	<button type="button" class="theme-btn button-success border-0"><span class="la la-check-circle"></span> 예약하기</button>
                                                
                                                <!-- /////////////////////////// 찜 목록 삭제 버튼 열기 ///////////////////////////// -->
											    <!-- Button trigger modal -->
												<button type="button" class="theme-btn border-0" data-toggle="modal" data-target="#exampleModal3"><span class="la la-trash"></span>
												  삭제
												</button>
												
												<!-- Modal -->
												<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
												  <div class="modal-dialog" role="document">
												    <div class="modal-content">
												      <div class="modal-header">
												        <h5 class="modal-title" id="exampleModalLabel">찜 목록 삭제</h5>
												        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
												          <span aria-hidden="true">&times;</span>
												        </button>
												      </div>
												      
												      
												      <div class="modal-body" align='center'>
												      <a href="listing-details.html" class="card-image-wrap">
					                                        <div class="card-image">
					                                            <img src="/images/img25.jpg" class="card__img" alt="">
					                                        </div>
					                                  </a>
												      <div class="card-content">
				                                            <a href="listing-details.html">
				                                                <h4 class="card-title mt-0">랄라불라 캠핑</h4>
				                                                <p class="card-sub"><span class="la la-map-marker"></span>부산시 부산행 반도</p>
				                                            </a>
				                                      </div>
				                                        
												       랄라불라 캠핑장을 찜 목록에서 삭제하시겠습니까?
												      </div>
												      <div class="modal-footer">
												      	<button type="button" class="btn btn-primary">삭제하기</button>
												       	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
												      </div>
												    </div>
												  </div>
												</div>
											   <!-- /////////////////////////// 찜 목록 삭제 버튼 닫기 ///////////////////////////// -->
											    
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img26.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">beach blue boardwalk</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img27.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">hotel govendor</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img28.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">Favorite Place Food Bank</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img29.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">beach blue boardwalk</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                            <div class="col-lg-4 column-td-6">
                                <div class="card-item">
                                    <a href="listing-details.html" class="card-image-wrap">
                                        <div class="card-image">
                                            <img src="/images/img30.jpg" class="card__img" alt="">
                                        </div>
                                    </a>
                                    <div class="card-content-wrap">
                                        <div class="card-content">
                                            <a href="listing-details.html">
                                                <h4 class="card-title mt-0">hotel govendor</h4>
                                                <p class="card-sub">Bishop Avenue, New York</p>
                                            </a>
                                        </div>
                                        <div class="rating-row">
                                            <div class="edit-info-box">
                                                <button type="button" class="theme-btn border-0" data-toggle="modal" data-target=".product-delete-modal"><span class="la la-trash"></span> delete</button>
                                            </div>
                                        </div>
                                    </div><!-- end card-content-wrap -->
                                </div><!-- end card-item -->
                            </div><!-- end col-lg-4 -->
                        </div><!-- end row -->
                    </div>
                    
                    
                    
                    
                    
                    
                    <!-- 캠핑장 정보 패널 -->
                    <div class="tab-pane fade" id="nav-camping" role="tabpanel" aria-labelledby="nav-profile-tab">
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
                                        <h2 class="user__name widget-title pb-2"> 한다솜 </h2>
                                        <div class="section-heading">
                                            <p class="sec__desc font-size-15 line-height-24">
                                              사업자 전용 관리페이지입니다. 
                                            </p>
                                            
                                            
                                        </div>
                                        <ul class="list-items mt-3">
                                            <!-- <li><span class="la la-github-alt"></span> 닉네임 : 조이 정 </li>
                                            <li class="text-lowercase"><span class="la la-diamond"></span> 등급 : silver </li>
                                            <li class="text-lowercase"><span class="la la-cc-diners-club"></span> 포인트 : 2000P </li> -->
                                        </ul>
                                       <div class="user-edit-form mt-4">
                                           <div class="dropdown">
                                               <button class="theme-btn edit-form-btn shadow-none w-100 dropdown-toggle after-none" type="button" id="editForm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                   <i class="la la-pencil-square-o"></i> Edit
                                               </button>
                                               <div class="dropdown-menu" aria-labelledby="editForm">
                                                   <div class="contact-form-action">
                                                       <div class="input-box">
                                                           <label class="label-text">Name</label>
                                                           <div class="form-group">
                                                               <span class="la la-user form-icon"></span>
                                                               <input class="form-control" type="text" name="name" placeholder="Enter your name">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <label class="label-text">Bio Data</label>
                                                           <div class="form-group">
                                                               <span class="la la-pencil form-icon"></span>
                                                               <textarea class="message-control form-control" name="message" placeholder="Add a bio"></textarea>
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-map-marker form-icon"></span>
                                                               <input class="form-control" type="text" name="location" placeholder="Location">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-phone form-icon"></span>
                                                               <input class="form-control" type="text" name="number" placeholder="Number">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-envelope-o form-icon"></span>
                                                               <input class="form-control" type="email" name="email" placeholder="Email Address">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-youtube-play form-icon"></span>
                                                               <input class="form-control" type="text" name="youtube" placeholder="Youtube URL">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="input-box">
                                                           <div class="form-group">
                                                               <span class="la la-globe form-icon"></span>
                                                               <input class="form-control" type="text" name="website" placeholder="Website">
                                                           </div>
                                                       </div><!-- end input-box -->
                                                       <div class="btn-box">
                                                           <button type="button" class="theme-btn border-0 button-success">save changes</button>
                                                           <button type="button" class="theme-btn border-0">Cancel</button>
                                                       </div><!-- end btn-box -->
                                                   </div><!-- end contact-form-action -->
                                               </div>
                                           </div>
                                       </div>
                                    </div><!-- end user-details -->
                                </div><!-- end user-profile-action -->
                            </div><!-- end col-lg-4 -->
                            
                            <!-- /////////////////////////// 유저 오른쪽 정보 ///////////////////////////// -->
                            <!-- test-section -->
                            <div id="test-area" class="col-lg-8">
                                <div class="user-form-action">
                                    <div class="billing-form-item">
                                        <div class="billing-title-wrap">
                                            <h3 class="widget-title pb-0">캠핑장 정보 </h3>
                                            <div class="title-shape margin-top-10px"></div>
                                        </div><!-- billing-title-wrap -->
                                        <div class="billing-content">
                                            <div class="contact-form-action">
                                                <form id="test-area2" method="post">
                                                <div class="gallery-carousel padding-top-35px padding-bottom-40px">
							                        <div data-dot="<img src='/images/flag10.png'>">
							                            <img src="/images/flag12.jpg">
							                        </div><!-- end gallery-item -->
							                        <div data-dot="<img src='/images/flag11.png'>" class="gallery-item">
							                            <img src="/images/flag13.jpg" alt="gallery-image">
							                        </div><!-- end gallery-item -->
							                        <div data-dot="<img src='/images/g-img3.jpg'>" class="gallery-item">
							                            <img src="/images/img19.jpg" alt="gallery-image">
							                        </div><!-- end gallery-item -->
							                        <div data-dot="<img src='/images/g-img4.jpg'>" class="gallery-item">
							                            <img src="/images/img20.jpg" alt="gallery-image">
							                        </div><!-- end gallery-item -->
							                        <div data-dot="<img src='/images/g-img5.jpg'>" class="gallery-item">
							                            <img src="/images/img21.jpg" alt="gallery-image">
							                        </div><!-- end gallery-item -->
							                        <div data-dot="<img src='/images/g-img6.jpg'>" class="gallery-item">
							                            <img src="/images/img22.jpg" alt="gallery-image">
							                        </div><!-- end gallery-item -->
							                    </div><!-- end gallery-carousel -->
                                                    <div class="input-box">
                                                        <label class="label-text">캠핑장 이름  </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="랄라불라 캠핑장" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">캠핑장 주소 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="경기도 평택시 어쩌고 모모" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">전화번호 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="(031)683-7777" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">이메일 주소 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="lalabula1234@naver.com" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">찜 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="+25" readonly>
                                                        </div>
                                                    </div>
                                                   
                                                    <div class="btn-box">
                                                        <button class="theme-btn button-success border-0">수정 </button>
                                                    </div>
                                                    
	                                                 
                                                </form>
                                               
                                            </div><!-- end contact-form-action -->
                                        </div><!-- end billing-content -->
                                    </div>
                                </div><!-- end user-form-action -->
                                <div class="delete-account-info">
                                    <div class="billing-form-item">
                                        <div class="billing-title-wrap">
                                            <h3 class="widget-title pb-0 color-text">캠핑장 삭제 </h3>
                                            <div class="title-shape margin-top-10px"></div>
                                        </div><!-- billing-title-wrap -->
                                        <div class="delete-info-content p-4">
                                            <p class="mb-3"><span class="text-warning">주의</span> 캠핑장 삭제와 동시에 캠핑장과 관련된 모든 정보는 말소됩니다.</p>
                                            <button class="theme-btn border-0 " data-toggle="modal" data-target=".account-delete-modal"> 삭제 </button>
                                        </div><!-- end delete-info-content -->
                                    </div>
                                </div><!-- end delete-account-info -->
                            </div><!-- end col-lg-8 -->
                            <!-- END test-section -->
                            
                        </div><!-- END row -->
                    </div><!-- END nav-camping -->
                    
                    
                    
                    
                </div>
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end dashboard-area -->
<!-- ================================
    END DASHBOARD AREA
================================= -->
<script src="../js/my-page.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="../js/test.js?ver=<%=System.currentTimeMillis()%>"></script>
</body>
</html>