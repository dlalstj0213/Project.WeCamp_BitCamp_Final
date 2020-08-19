<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <style>
	.star-rating { width:205px; }
	.star-rating,.star-rating span { display:inline-block; height:39px; overflow:hidden; background:url(star.png)no-repeat; }
	.star-rating span{ background-position:left bottom; line-height:0; vertical-align:top; }
	</style>
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
                            
                            <a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">
                                <span class="la la-user"></span> 프로필
                            </a>
                            
                            <a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1 active" id="nav-listing-tab" data-toggle="tab" href="#nav-listing" role="tab" aria-controls="nav-listing" aria-selected="false">
                                <span class="la la-list-alt"></span> 예약내역
                            </a>
                            
                            <a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1" id="nav-bookmark-tab" data-toggle="tab" href="#nav-bookmarks" role="tab" aria-controls="nav-bookmarks" aria-selected="false">
                                <span class="la la-bookmark-o"></span> 찜 목록
                            </a>
                            
                            <a class="nav-item nav-link theme-btn pt-0 pb-0 mr-1" id="nav-bookmark-tab" data-toggle="tab" href="#nav-camping" role="tab" aria-controls="nav-bookmarks" aria-selected="false">
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
                    <div class="tab-pane fade show active" id="nav-listing" role="tabpanel" aria-labelledby="nav-listing-tab">
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
                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
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
                                        <h2 class="user__name widget-title pb-2"> 조이 정 </h2>
                                        <div class="section-heading">
                                            <p class="sec__desc font-size-15 line-height-24">
                                               보조 설명  보조 설명  보조 설명  보조 설명  보조 설명  보조 설명  
                                            </p>
                                            
                                            
                                        </div>
                                        <ul class="list-items mt-3">
                                            <li><span class="la la-github-alt"></span> 닉네임 : 조이 정 </li>
                                            <li class="text-lowercase"><span class="la la-diamond"></span> 등급 : silver </li>
                                            <li class="text-lowercase"><span class="la la-cc-diners-club"></span> 포인트 : 2000P </li>
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
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="정혜원 " readonly>
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">성별 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="여자 " readonly>
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">생년월일 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="1996/02/03" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">이메일 주소 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="vkfks1234@naver.com" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">전화번호 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="01011112222" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="input-box">
                                                        <label class="label-text">주소 </label>
                                                        <div class="form-group">
                                                            
                                                            <input class="form-control" type="text" name="text" placeholder="서울시 불광어쩌고 연신" readonly>
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
                                            <h3 class="widget-title pb-0 color-text">계정 삭제 </h3>
                                            <div class="title-shape margin-top-10px"></div>
                                        </div><!-- billing-title-wrap -->
                                        <div class="delete-info-content p-4">
                                            <p class="mb-3"><span class="text-warning">주의</span> 계정 삭제와 동시에 모든 정보는 말소됩니다.</p>
                                            <button class="theme-btn border-0 " data-toggle="modal" data-target=".account-delete-modal"> 계정 삭제 </button>
                                        </div><!-- end delete-info-content -->
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
                            <div class="col-lg-8">
                                <div class="user-form-action">
                                    <div class="billing-form-item">
                                        <div class="billing-title-wrap">
                                            <h3 class="widget-title pb-0">캠핑장 정보 </h3>
                                            <div class="title-shape margin-top-10px"></div>
                                        </div><!-- billing-title-wrap -->
                                        <div class="billing-content">
                                            <div class="contact-form-action">
                                                <form method="post">
                                                <div class="gallery-carousel padding-top-35px padding-bottom-40px">
							                        <div data-dot="<img src='/images/g-img1.jpg'>" class="gallery-item">
							                            <img src="/images/img17.jpg" alt="gallery-image">
							                        </div><!-- end gallery-item -->
							                        <div data-dot="<img src='/images/g-img2.jpg'>" class="gallery-item">
							                            <img src="/images/img18.jpg" alt="gallery-image">
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
                        </div>
                    </div>
                    
                    
                    
                    
                </div>
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end dashboard-area -->
<!-- ================================
    END DASHBOARD AREA
================================= -->

</body>
</html>