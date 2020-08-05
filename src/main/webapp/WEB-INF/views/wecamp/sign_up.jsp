<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
       START FORM AREA
================================= -->
<section class="form-shared padding-top-40px padding-bottom-100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 mx-auto">
                <div class="billing-form-item mb-0">
                    <div class="billing-title-wrap border-bottom-0 pr-0 pl-0 pb-0 text-center">
                        <h3 class="widget-title font-size-28 pb-0">Create an account!</h3>
                        <p class="font-size-16 font-weight-medium">Wecamp와 함께 즐거운 캠핑 생활을 즐겨 보세요!</p>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="contact-form-action">
                            <form method="post">
                                <div class="row">
                                    
                                    <div class="col text-center">
                                        <div class="form-group">
                                            <button class="btn" id="btn" type="submit"><img class="btn-img" src="images/kakao_login_medium_wide.png"></button>
                                        </div>
                                    </div><!-- end col-lg-4 -->
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
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">아이디(*실시간 에이젝스로 중복확인 주기)</label>
                                            <div class="form-group">
                                                <span class="la la-user form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="아이디를 입력해 주세요">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">이름</label>
                                            <div class="form-group">
                                                <span class="la la-user form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="이름을 입력해 주세요">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">닉네임</label>
                                            <div class="form-group">
                                                <span class="la la-user form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="닉네임을 입력해 주세요">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">비밀번호 </label>
                                            <div class="form-group">
                                                <span class="la la-lock form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="비밀번호를 입력해 주세요">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">비밀번호 확인</label>
                                            <div class="form-group">
                                                <span class="la la-lock form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="비밀번호를 입력해 주세요">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            
												<label class="label-text">생년월일</label>
													<div class="form-group">
		                                                <span class="la la-user form-icon" style="float:right"></span>
		                                                <input class="form-control" type="text" id="datePicker" placeholder="생년월일을 선택해 주세요">
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
										
												$('#click-btn').on('click', function() {
													var date = $('#dateRangePicker').val();
													alert(date);
												});
											</script>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">이메일</label>
                                            <div class="form-group">
                                                <span class="la la-envelope-o form-icon"></span>
                                                <input class="form-control" type="email" name="text" placeholder="이메일을 입력해 주세요">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <div class="custom-checkbox d-block mr-0">
                                                <input type="checkbox" id="chb13">
                                                <label for="chb13" class="d-flex align-items-center justify-content-between">개인정보 수집 이용에 동의합니다.
                                                <a role="button" data-toggle="collapse" class="color-text" data-target="#demo">보기</a>
                                                </label>
		                                            <div id="demo" class="collapse">
		                                            	<div class="card card-body" style="overflow:scroll; width:380px; height:200px;">
													       서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관
													    </div>
													</div>
											
                                            </div><!-- end custom-checkbox -->
                          

                                            <div class="custom-checkbox d-block mr-0">
                                                <input type="checkbox" id="chb14">
                                                <label for="chb14" class="d-flex align-items-center justify-content-between">서비스 이용 약관에 동의합니다.
                                                <a role="button" data-toggle="collapse" class="color-text" data-target="#demo2">보기</a>
                                                </label>
                                                	<div id="demo2" class="collapse">
		                                            	<div class="card card-body">
													    	서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 서비스이용약관 
													    </div>
													</div>
                                            </div><!-- end custom-checkbox -->
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="btn-box margin-top-20px margin-bottom-20px">
                                            <button class="theme-btn border-0 w-100" type="submit">
                                                회원가입 
                                            </button>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <p class="font-weight-medium">이미 WeCamp 아이디가 있으신가요? <a href="login.html" class="color-text">Login</a></p>
                                    </div><!-- end col-lg-12 -->
                                </div><!-- end row -->
                            </form>
                        </div><!-- end contact-form-action -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
            </div><!-- end col-lg-6 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end form-shared -->

<script>
$(document).ready(function(){
	$("#test").on("click",function(){
		$("#demo").collapse({
			  toggle: true
			})
	});
})


</script>
<!-- ================================
       START FORM AREA
================================= -->



<!-- ================================
       START FOOTER AREA
================================= -->
<section class="footer-area section-bg padding-top-140px padding-bottom-60px">
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
                        <a href="index.html" class="foot-logo"><img src="images/logo2.png" alt="logo"></a>
                        <p class="footer__desc">
                            Morbi convallis bibendum urna ut viverra. Maecenas
                            quis consequat libero, a feugiat eros
                        </p>
                        <ul class="social-profile">
                            <li>
                                <a href="#">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-dribbble"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-behance"></i>
                                </a>
                            </li>
                        </ul>
                    </div><!-- end logo -->
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
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
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
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
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
            <div class="col-lg-3 column-td-6">
                <div class="footer-item">
                    <h4 class="footer__title">Contact with Us</h4>
                    <ul class="info-list contact-links">
                        <li><span class="la la-home"></span> 12345 Little Baker St, Melbourne </li>
                        <li><span class="la la-headphones"></span> <a href="#">+ 61 23 8093 3400</a></li>
                        <li><span class="la la-envelope-o"></span> <a href="#">dirto@gmail.com</a></li>
                    </ul>
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
        </div><!-- end row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="copy-right margin-top-50px padding-top-60px">
                    <p class="copy__desc">
                        &copy; Copyright Dirto 2020. Made with
                        <span class="la la-heart-o"></span> by <a href="https://themeforest.net/user/techydevs/portfolio">TechyDevs</a>
                    </p>
                    <ul class="list-items">
                        <li><a href="#">Terms & Conditions</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Help Center</a></li>
                    </ul>
                </div><!-- end copy-right -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end footer-area -->
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
