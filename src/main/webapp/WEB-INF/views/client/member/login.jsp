<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
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

<body>
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
							<h2 class="breadcrumb__title">login</h2>
							<ul class="breadcrumb__list">
								<li class="active__list-item"><a href="index.html">home</a></li>
								<li>login</li>
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
							<h3 class="widget-title font-size-28 pb-0">Login to your
								account</h3>

						</div>
						<!-- billing-title-wrap -->
						<div class="billing-content">
							<div class="contact-form-action">
								<form method="post">
									<div class="row">
										<div class="col text-center">
											<p class="font-size-16 font-weight-medium">카카오톡 아이디가
												있으신가요?</p>
											<div class="form-group">
												<button class="btn" id="btn" type="submit">
													<img class="btn-img"
														src="/images/kakao_login_medium_wide.png">
												</button>
											</div>
										</div>
										<div class="col-lg-12">
											<div class="account-assist mt-4 mb-4 text-center">
												<p class="account__desc">or</p>
											</div>
										</div>
										<!-- end col-lg-12 -->
										<div class="col-lg-12">
											<div class="input-box">
												<label class="label-text">ID</label>
												<div class="form-group">
													<span class="la la-user form-icon"></span> <input
														class="form-control" type="email" name="text"
														placeholder="아이디를 입력해 주세요">
												</div>
											</div>
										</div>
										<!-- end col-lg-12 -->
										<div class="col-lg-12">
											<div class="input-box">
												<label class="label-text">Password</label>
												<div class="form-group">
													<span class="la la-lock form-icon"></span> <input
														class="form-control" type="text" name="text"
														placeholder="비밀번호를 입력해 주세요">
												</div>
											</div>
										</div>
										<!-- end col-lg-12 -->
										<div class="col-lg-12">
											<div class="form-group">
												<div
													class="custom-checkbox mr-0 d-flex align-items-center justify-content-between">
													<div>
														<input type="checkbox" id="chb1"> <label
															for="chb1">로그인 상태 유지</label>
													</div>

													<div class="text-center">
														<!-- Button HTML (to Trigger Modal) -->
														<a href="#myModal" class="color-text font-weight-medium"
															data-toggle="modal" type="button">비밀번호 찾기 </a>
													</div>

													<!-- Modal HTML -->
													<div id="myModal" class="modal fade">
														<div class="modal-dialog modal-login">
															<div class="modal-content">
																<div class="modal-header">
																	<h4 class="modal-title">비밀번호 찾기</h4>

																	<button type="button" class="close"
																		data-dismiss="modal" aria-hidden="true">&times;</button>
																</div>
																<div style="font-size: 12px; text-align: center">
																	계정으로 사용하는 이메일 주소를 입력하시면, 비밀번호 재설정 링크를 전송해 드립니다.</div>
																<div class="modal-body">
																	<form action="/examples/actions/confirmation.php"
																		method="post">
																		<div class="form-group">

																			<div class="input-group">

																				<span class="input-group-addon"></span> <input
																					type="text" class="form-control" name="username"
																					placeholder="Email" required="required">
																			</div>
																		</div>

																		<div class="form-group">
																			<button type="submit"
																				class="theme-btn border-0 w-100">재설정 링크
																				전송하기</button>
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
											</div>
										</div>
										<!-- end col-lg-12 -->
										<div class="col-lg-12">
											<div class="btn-box margin-top-20px margin-bottom-20px">
												<button class="theme-btn border-0 w-100" type="submit">Login
													now</button>
											</div>
										</div>
										<!-- end col-lg-12 -->
										<div class="col-lg-12">
											<p class="font-weight-medium">
												아직 WeCamp 회원이 아니신가요? <a href="sign-up.html"
													class="color-text"> 회원가입 </a>
											</p>
										</div>
										<!-- end col-lg-12 -->
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

	<!-- ================================
    START CTA AREA
================================= -->
	<section class="cta-area cta-area2">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="cta-box d-flex align-items-center">
						<div class="col-lg-8">
							<div class="section-heading">
								<h2 class="sec__title text-white">Subscribe to Newsletter!</h2>
								<p class="sec__desc">Subscribe to get latest updates and
									information.</p>
							</div>
							<!-- end section-heading -->
						</div>
						<!-- end col-lg-8 -->
						<div class="col-lg-4">
							<div class="contact-form-action">
								<form method="post">
									<div class="form-group mb-0">
										<span class="la la-envelope-o form-icon"></span> <input
											class="form-control" type="email"
											placeholder="Enter your email">
										<button class="theme-btn" type="submit">Subscribe</button>
									</div>
								</form>
							</div>
							<!-- end contact-form-action -->
						</div>
						<!-- end col-lg-3 -->
					</div>
					<!-- end cta-box -->
				</div>
				<!-- end col-lg-12 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<!-- end cta-area -->
	<!-- ================================
    END CTA AREA
================================= -->

	<!-- ================================
       START FOOTER AREA
================================= -->
	<section
		class="footer-area section-bg padding-top-140px padding-bottom-60px">
		<div class="box-icon"></div>
		<div class="box-icon"></div>
		<div class="box-icon"></div>
		<div class="box-icon"></div>
		<div class="box-icon"></div>
		<div class="box-icon"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 column-td-6">
					<div class="footer-item">
						<div class="logo">
							<a href="index.html" class="foot-logo"><img
								src="images/logo2.png" alt="logo"></a>
							<p class="footer__desc">Morbi convallis bibendum urna ut
								viverra. Maecenas quis consequat libero, a feugiat eros</p>
							<ul class="social-profile">
								<li><a href="#"> <i class="fa fa-facebook"></i>
								</a></li>
								<li><a href="#"> <i class="fa fa-twitter"></i>
								</a></li>
								<li><a href="#"> <i class="fa fa-instagram"></i>
								</a></li>
								<li><a href="#"> <i class="fa fa-dribbble"></i>
								</a></li>
								<li><a href="#"> <i class="fa fa-behance"></i>
								</a></li>
							</ul>
						</div>
						<!-- end logo -->
					</div>
					<!-- end footer-item -->
				</div>
				<!-- end col-lg-3 -->
				<div class="col-lg-3 column-td-6">
					<div class="footer-item">
						<h4 class="footer__title">Quick Links</h4>
						<ul class="list-items">
							<li><a href="about.html">about us</a></li>
							<li><a href="sign-up.html">sign up</a></li>
							<li><a href="login.html">log in</a></li>
							<li><a href="add-listing.html">add listing</a></li>
							<li><a href="contact.html">contact us</a></li>
							<li><a href="pricing.html">pricing</a></li>
						</ul>
					</div>
					<!-- end footer-item -->
				</div>
				<!-- end col-lg-3 -->
				<div class="col-lg-3 column-td-6">
					<div class="footer-item">
						<h4 class="footer__title">Categories</h4>
						<ul class="list-items">
							<li><a href="#">Shops</a></li>
							<li><a href="#">Hotels</a></li>
							<li><a href="#">Restaurants</a></li>
							<li><a href="#">Bars</a></li>
							<li><a href="#">Events</a></li>
							<li><a href="#">Fitness</a></li>
						</ul>
					</div>
					<!-- end footer-item -->
				</div>
				<!-- end col-lg-3 -->
				<div class="col-lg-3 column-td-6">
					<div class="footer-item">
						<h4 class="footer__title">Contact with Us</h4>
						<ul class="info-list contact-links">
							<li><span class="la la-home"></span> 12345 Little Baker St,
								Melbourne</li>
							<li><span class="la la-headphones"></span> <a href="#">+
									61 23 8093 3400</a></li>
							<li><span class="la la-envelope-o"></span> <a href="#">dirto@gmail.com</a></li>
						</ul>
					</div>
					<!-- end footer-item -->
				</div>
				<!-- end col-lg-3 -->
			</div>
			<!-- end row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="copy-right margin-top-50px padding-top-60px">
						<p class="copy__desc">
							&copy; Copyright Dirto 2020. Made with <span
								class="la la-heart-o"></span> by <a
								href="https://themeforest.net/user/techydevs/portfolio">TechyDevs</a>
						</p>
						<ul class="list-items">
							<li><a href="#">Terms & Conditions</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Help Center</a></li>
						</ul>
					</div>
					<!-- end copy-right -->
				</div>
				<!-- end col-lg-12 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<!-- end footer-area -->
	<!-- ================================
       START FOOTER AREA
================================= -->

	<!-- start back-to-top -->
	<div id="back-to-top">
		<i class="fa fa-angle-up" title="Go top"></i>
	</div>
	<!-- end back-to-top -->


</body>
</html>