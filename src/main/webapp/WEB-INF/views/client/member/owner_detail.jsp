<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- /////////////////////////// 유저 오른쪽 정보 ///////////////////////////// -->

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
										<h2 class="user__name widget-title pb-2">한다솜</h2>
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
								<div>
								<div class="user-form-action">
									<div class="billing-form-item">
										<div class="billing-title-wrap">
											<h3 class="widget-title pb-0">캠핑장 정보11111</h3>
											<div class="title-shape margin-top-10px"></div>
										</div>
										<!-- billing-title-wrap -->
										<div class="billing-content">
											<div id="test123" class="contact-form-action">
												<form method="post">
												 <div class="gallery-carousel padding-top-35px padding-bottom-40px">
														<div data-dot="<img src='/images/g-img1.jpg'>"
															class="gallery-item">
															<img src="/images/img17.jpg" alt="gallery-image">
														</div>
														<!-- end gallery-item -->
														<div data-dot="<img src='/images/g-img2.jpg'>"
															class="gallery-item">
															<img src="/images/img18.jpg" alt="gallery-image">
														</div>
														<!-- end gallery-item -->
														<div data-dot="<img src='/images/g-img3.jpg'>"
															class="gallery-item">
															<img src="/images/img19.jpg" alt="gallery-image">
														</div>
														<!-- end gallery-item -->
														<div data-dot="<img src='/images/g-img4.jpg'>"
															class="gallery-item">
															<img src="/images/img20.jpg" alt="gallery-image">
														</div>
														<!-- end gallery-item -->
														<div data-dot="<img src='/images/g-img5.jpg'>"
															class="gallery-item">
															<img src="/images/img21.jpg" alt="gallery-image">
														</div>
														<!-- end gallery-item -->
														<div data-dot="<img src='/images/g-img6.jpg'>"
															class="gallery-item">
															<img src="/images/img22.jpg" alt="gallery-image">
														</div>
														<!-- end gallery-item -->
													</div>
													<!-- end gallery-carousel -->
													<div class="input-box">
														<label class="label-text">캠핑장 이름 </label>
														<div class="form-group">

															<input class="form-control" type="text" name="text"
																placeholder="랄라불라 캠핑장" readonly>
														</div>
													</div>
													<div class="input-box">
														<label class="label-text">캠핑장 주소 </label>
														<div class="form-group">

															<input class="form-control" type="text" name="text"
																placeholder="경기도 평택시 어쩌고 모모" readonly>
														</div>
													</div>
													<div class="input-box">
														<label class="label-text">전화번호 </label>
														<div class="form-group">

															<input class="form-control" type="text" name="text"
																placeholder="(031)683-7777" readonly>
														</div>
													</div>
													<div class="input-box">
														<label class="label-text">이메일 주소 </label>
														<div class="form-group">

															<input class="form-control" type="text" name="text"
																placeholder="lalabula1234@naver.com" readonly>
														</div>
													</div>
													<div class="input-box">
														<label class="label-text">찜 </label>
														<div class="form-group">

															<input class="form-control" type="text" name="text"
																placeholder="+25" readonly>
														</div>
													</div>

													<div class="btn-box">
														<button class="theme-btn button-success border-0">수정
														</button>
													</div>


												</form>
											</div>
											<!-- end contact-form-action -->
										</div>
										<!-- end billing-content -->
									</div>
									
								</div>
								<!-- end user-form-action -->
								</div>
								<div class="delete-account-info">
									<div class="billing-form-item">
										<div class="billing-title-wrap">
											<h3 class="widget-title pb-0 color-text">캠핑장 삭제</h3>
											<div class="title-shape margin-top-10px"></div>
										</div>
										<!-- billing-title-wrap -->
										<div class="delete-info-content p-4">
											<p class="mb-3">
												<span class="text-warning">주의</span> 캠핑장 삭제와 동시에 캠핑장과 관련된 모든
												정보는 말소됩니다.
											</p>
											<button class="theme-btn border-0 " data-toggle="modal"
												data-target=".account-delete-modal">삭제</button>
										</div>
										<!-- end delete-info-content -->
									</div>
								</div>
								<!-- end delete-account-info -->
							</div>
							<!-- end col-lg-8 -->
						</div>