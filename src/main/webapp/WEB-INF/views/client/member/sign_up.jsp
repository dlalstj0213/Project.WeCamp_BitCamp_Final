<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<style>
::-webkit-scrollbar {
	width: 6px;
}

::-webkit-scrollbar-track {
	background-color: transparent;
}

::-webkit-scrollbar-thumb {
	border-radius: 3px;
	background-color: gray;
}

::-webkit-scrollbar-button {
	width: 0;
	height: 0;
}

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

<!-- <script>
	$(function() {
		$("#email-check").hide();
		$("#check")
				.click(
						function() {
							$
									.ajax({
										url : "${pageContext.request.contextPath}/sign_up/email_check.wcc",
										type : "POST",
										data : {
											email : $("#email").val()
										},
										success : function(result) {
											if (result == 1) {
												$("#email-check").show();
												var html = "<div>이미 사용중인 아이디입니다 </div>";
												$('#email-check').empty();
												$('#email-check').append(html);
												$("#sign-up-btn").attr(
														"disabled", "disabled");
											} else {
												$("#email_check").html(
														"사용 가능한 이메일입니다");
												$("#sign-up-btn").removeAttr(
														"disabled");
											}
										},
									})
						});

	})
</script> -->

<!-- start per-loader -->
<div class="loader-container">
	<div class="loader-ripple">
		<div></div>
		<div></div>
	</div>
</div>
<!-- end per-loader -->


<!-- ================================
    START BREADCRUMB AREA
================================= -->
<section class="breadcrumb-area">
	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-content">
						<h2 class="breadcrumb__title">sign up</h2>
						<ul class="breadcrumb__list">
							<li class="active__list-item"><a href="index.html">home</a></li>
							<li>sign up</li>
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
       START FORM AREA
================================= -->
<section class="form-shared padding-top-40px padding-bottom-100px">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 mx-auto">
				<div class="billing-form-item mb-0">
					<div
						class="billing-title-wrap border-bottom-0 pr-0 pl-0 pb-0 text-center">
						<h3 class="widget-title font-size-28 pb-0">Create an account!</h3>
						<p class="font-size-16 font-weight-medium">Wecamp와 함께 즐거운 캠핑
							생활을 즐겨 보세요!</p>
					</div>
					<!-- billing-title-wrap -->
					<div class="billing-content">
						<div class="contact-form-action">
							<form id="sign-up-form" method="post" action="sign_up.wcc">
								<div class="row">

									<div class="col text-center">
										<div class="form-group">
											<button class="btn" id="btn" type="submit">
												<img class="btn-img"
													src="/images/kakao_login_medium_wide.png">
											</button>
										</div>
									</div>
									<!-- end col-lg-4 -->
									<!-- <div class="col-lg-4">
                                        <div class="form-group">
                                            <button class="theme-btn bg-6 border-0 w-100" type="submit">
                                                <i class="fa fa-twitter"></i> twitter
                                            </button>
                                        </div>
                                    </div>end col-lg-4 -->
									<div class="col-lg-12">
										<div class="account-assist mt-4 mb-4 text-center">
											<p class="account__desc">or</p>
										</div>
									</div>
									<!-- end col-lg-12 -->


									<div class="col-lg-12">
										<div class="input-box" style="margin-bottom: 15px;">
											<label class="label-text" style="margin-left: 15px;">이메일(*실시간 에이젝스로 중복확인 주기)</label>
											<div class="input-group">
												<input id="realemail" type="email" name="realemail"
													placeholder="이메일을 입력해 주세요" required="" class="form-control"
													style="left: 15px; padding-left: 15px;"> <input
													type="button" id="check" class="theme-btn border-0"
													style="margin-left: 20px; margin-right: 15px;"
													value="중복 확인">
											</div>
											<!-- <div class="alert alert-success" id="result-check">비밀번호가 일치합니다.</div> -->
											<div class="alert alert-danger" id="result-check"></div>
											<div class="alert alert-danger" id="email-check" style="display: block;margin-left: 15px;margin-right: 15px;margin-top: 15px;padding-top: 10px;padding-bottom: 10px;"></div>
										</div>
									</div>
								</div>
								<!-- end col-lg-12 -->
								<div class="col-lg-12">
									<div class="input-box">
										<label class="label-text">이름</label>
										<div class="form-group">
											<span class="la la-user form-icon"></span> <input
												class="form-control" type="text" id="name" name="name"
												placeholder="이름을 입력해 주세요" required>
										</div>
									</div>
								</div>
								<!-- end col-lg-12 -->
								<!-- <div class="col-lg-12">
										<div class="input-box">
											<label class="label-text">전화번호</label>
											<div class="form-group">
												<span class="la la-phone form-icon"></span> <input
													class="form-control checkPhone" name="a_no" id="phoneNum" type="text"
													name="text" placeholder="전화번호를 입력해 주세요" maxlength="13">
											</div>
										</div>
									</div>
									end col-lg-12 -->
								<div class="col-lg-12">
									<div class="input-box">
										<label class="label-text">닉네임</label>
										<div class="form-group">
											<span class="la la-user form-icon"></span> <input
												class="form-control" type="text" id="nickname"
												name="nickname" placeholder="닉네임을 입력해 주세요" required>
										</div>
									</div>
								</div>
								<!-- end col-lg-12 -->
								<div class="col-lg-12">
									<div class="input-box">
										<label class="label-text">비밀번호 </label>
										<div class="form-group">
											<span class="la la-lock form-icon"></span> <input
												class="form-control" id="pwd" type="password" name="pwd"
												placeholder="비밀번호를 입력해 주세요 (숫자, 영문자, 특수문자 포함 8자 이상)"
												maxlength="20" required>
										</div>
										<div class="alert alert-danger" id="pwd-danger">비밀번호는
											8자리 이상의 문자, 숫자, 특수문자로 구성하여야 합니다.</div>
									</div>
								</div>
								<!-- end col-lg-12 -->
								<div class="col-lg-12">
									<div class="input-box">
										<label class="label-text">비밀번호 확인</label>
										<div class="form-group">
											<span class="la la-lock form-icon"></span> <input
												class="form-control" id="pwdCheck" type="password"
												name="pwdCheck" placeholder="비밀번호를 입력해 주세요" required>
										</div>
										<div class="alert alert-success" id="alert-success">비밀번호가
											일치합니다.</div>
										<div class="alert alert-danger" id="alert-danger">비밀번호가
											일치하지 않습니다.</div>
									</div>
								</div>
								<!-- end col-lg-12 -->
								<div class="col-lg-12">
									<div class="input-box">

										<label class="label-text">생년월일</label>
										<div class="form-group">
											<span class="la la-user form-icon" style="float: right"></span>
											<input class="form-control" type="text" name="birth"
												id="datePicker" placeholder="생년월일을 선택해 주세요" required>
										</div>

										<!-- <script
												src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
										<script
											src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">
											
										</script>
										<script type="text/javascript">
											$('#datePicker').datepicker({
												format : "yyyy-mm-dd", // 달력에서 클릭시 표시할 값 형식
											});

											$('#click-btn')
													.on(
															'click',
															function() {
																var date = $(
																		'#dateRangePicker')
																		.val();
																alert(date);
															});
										</script>
									</div>
								</div>
								<!-- end col-lg-12 -->

								<div class="col-lg-12">
									<div class="form-group">
										<div class="custom-checkbox d-block mr-0">
											<input type="checkbox" id="chb13"> <label for="chb13"
												class="d-flex align-items-center justify-content-between">개인정보
												수집 이용에 동의합니다. <a role="button" id="aid"
												data-toggle="collapse" class="color-text"
												data-target="#demo">보기</a>
											</label>
											<div id="demo" class="collapse">
												<div id="textfile" class="card card-body"
													style="overflow: scroll; height: 200px;"></div>
											</div>

										</div>
										<!-- end custom-checkbox -->


										<div class="custom-checkbox d-block mr-0">
											<input type="checkbox" id="chb14"> <label for="chb14"
												class="d-flex align-items-center justify-content-between">서비스
												이용 약관에 동의합니다. <a role="button" id="aid2"
												data-toggle="collapse" class="color-text"
												data-target="#demo2">보기</a>
											</label>
											<div id="demo2" class="collapse">
												<div id="textfile2" class="card card-body"
													style="overflow: scroll; height: 200px;"></div>
											</div>

										</div>
										<!-- end custom-checkbox -->
									</div>
								</div>
								<!-- end col-lg-12 -->
								<div class="col-lg-12">
									<div class="btn-box margin-top-20px margin-bottom-20px">
										<button class="theme-btn border-0 w-100" id="sign-up-btn"
											type="submit">회원가입</button>
									</div>
								</div>
								<!-- end col-lg-12 -->
								<!-- <div class="col-lg-12">
									<div class="text-center">
										Button HTML (to Trigger Modal)
										<p class="font-weight-medium">
											이미 WeCamp 아이디가 있으신가요? <a href="#myModal"
												class="color-text font-weight-medium" data-toggle="modal"
												type="button">Login</a>
										</p>
									</div>

									Modal HTML
									<div id="myModal" class="modal fade">
										<div class="modal-dialog modal-login">
											<div class="modal-content">
												<div class="modal-header">
													<h4 class="modal-title">LOGIN</h4>

													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
												</div>

												<div class="modal-body">
													<form action="/examples/actions/confirmation.php"
														method="post">
														<div class="form-group">

															<div class="input-group">

																<span class="input-group-addon"></span> <input
																	type="text" class="form-control input-check-email2"
																	id="email2" name="email2" placeholder="Email"
																	required="required">
															</div>
															<a class="color-text font-weight-medium"
																id="result-check2" style="font-size: 12px">이메일 형식을
																올바르게 입력해 주세요</a>
														</div>

														<div class="form-group">

															<div class="input-group">

																<span class="input-group-addon"></span> <input
																	type="text" class="form-control" name="password2"
																	placeholder="Password" required="required">
															</div>
														</div>

														<div class="form-group">
															<button type="submit" class="theme-btn border-0 w-100">Login</button>
														</div>
													</form>
												</div>
												<div class="modal-footer">
													아직 WeCamp 회원이 아니신가요? <a href="#"
														class="color-text font-weight-medium">회원가입</a>
												</div>
											</div>
										</div>
									</div>




								</div>
								end col-lg-12 -->
						</div>
						<!-- end row -->
						</form>
					</div>
					<!-- end contact-form-action -->
				</div>
				<!-- end billing-content -->
			</div>
			<!-- end billing-form-item -->
		</div>
		<!-- end col-lg-6 -->
	</div>
	<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end form-shared -->


<!-- ================================
       START FORM AREA
================================= -->
<!-- 
start back-to-top -->
<div id="back-to-top">
	<i class="fa fa-angle-up" title="Go top"></i>
</div>
<!-- end back-to-top
 -->
<script src="/js/custom-signup.js"></script>
<script>
	$(document)
			.ready(
					function(e) {
						var idx = false;
						$('#sign-up').click(function() {
							if ($.trim($('#email').val()) == '') {
								alert("아이디 입력.");
								$('#email').focus();
								return;
							} else if ($.trim($('#pwd').val()) == '') {
								alert("패스워드 입력.");
								$('#pwd').focus();
								return;
							}
							if (idx == false) {
								alert("아이디 중복체크를 해주세요.");
								return;
							} else {
								$('#sign-up-form').submit();
							}
						});
						// 이메일 중복 체크(Ajax)
						$("#email-check").hide();
						$('#check')
								.click(
										function() {
											$
													.ajax({
														url : "${pageContext.request.contextPath}/sign_up/email_check.wcc",
														type : "POST",
														data : {
															"realemail" : $(
																	'#realemail')
																	.val()
														},
														success : function(
																result) {
															console
																	.log("realemail"
																			+ realemail);
															if (result == 0
																	&& $
																			.trim($(
																					'#realemail')
																					.val()) !== '') {
																idx = true;
																//$('#email2').attr("readonly",true);
																$(
																		"#email-check")
																		.show();
																var html = "<div>사용 가능한 아이디입니다 </div>";
																$(
																		'#email-check')
																		.empty();
																$(
																		'#email-check')
																		.append(
																				html);
															} else {
																$(
																		"#email-check")
																		.show();
																var html = "<div>이미 사용중인 아이디입니다 </div>";
																$(
																		'#email-check')
																		.empty();
																$(
																		'#email-check')
																		.append(
																				html);
															}
														},
														error : function() {
															alert("서버에러");
														}
													});
										});
					});
</script>


