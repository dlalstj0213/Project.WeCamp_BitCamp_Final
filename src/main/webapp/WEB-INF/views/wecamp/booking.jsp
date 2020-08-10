<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 이용 약관 보기 스크롤 -->
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
</style>

<!-- ================================
    START BREADCRUMB AREA
================================= -->
 <section class="breadcrumb-area">
    <div class="breadcrumb-wrap">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-content">
                        <h2 class="breadcrumb__title">booking</h2>
                        <ul class="breadcrumb__list">
                            <li class="active__list-item"><a href="/">home</a></li>
                            <li class="active__list-item">pages</li>
                            <li>booking</li>
                        </ul>
                    </div><!-- end breadcrumb-content -->
                </div><!-- end col-lg-12 -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end breadcrumb-wrap
    <div class="bread-svg">
        <svg viewBox="0 0 500 150" preserveAspectRatio="none">
            <path d="M-4.22,89.30 C280.19,26.14 324.21,125.81 511.00,41.94 L500.00,150.00 L0.00,150.00 Z"></path>
        </svg>
    </div> --><!-- end bread-svg-->
</section> <!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->

<!-- ================================
    START BOOKING AREA
================================= -->
<section class="booking-area padding-top-40px padding-bottom-80px">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">예약 정보</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="contact-form-action">
                            <form method="post">
                                <!-- <div class="row"> -->
                                 <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">날짜</label>
                                            <div class="form-group booking_date">
                                                	
                                            </div>
                                        </div>
                                 </div><!-- end col-lg-6 -->
                                 <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">인원</label>
                                            <div class="form-group peopleNum">
                                            </div>
                                        </div>
                                 </div><!-- end col-lg-6 -->
                                    
                                 <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">예약자 성함</label>
                                            <div class="form-group">
                                                <span class="la la-user form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="예약자 이름을 입력하세요.">
                                            </div>
                                        </div>
                                 </div><!-- end col-lg-6 -->
                                 <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text">예약자 번호</label>
                                            <div class="form-group">
                                                <span class="la la-phone form-icon"></span>
                                                <input class="form-control" type="text" name="text" placeholder="휴대폰 번호를 입력하세요.">
                                            </div>
                                        </div>
                                 </div><!-- end col-lg-6 -->
                               <!--  </div>end row -->
                            </form>
                        </div><!-- end contact-form-action -->
                    </div><!-- end billing-content -->
                     
                     
                     <div class="billing-title-wrap pt-0">
                            <h3 class="widget-title pb-0">가격 및 할인 정보</h3>
                            <div class="title-shape margin-top-10px"></div>
                     </div><!-- billing-title-wrap -->
   			
                           
   			
   			 				<ul class="booking-list">
                                <li class="d-flex align-items-center justify-content-between"
                                	style="font-size:15px;color:#333f57;font-weight:600;margin-top:15px;margin-bottom:10px; margin-left:40px;margin-right:20px;">
                                	 서비스 수수료(원) <span class="service_fee"></span>
                                </li>
                                <li class="d-flex align-items-center justify-content-between"
                                    style="font-size:15px;color:#333f57;font-weight:600;margin-top:7px; margin-bottom:10px; margin-left:40px;margin-right:20px;">
                                                                                캠핑 이용료(원) <span class="camp_fee"></span></li>
                                <li class="d-flex align-items-center justify-content-between"
                                    style="font-size:15px;color:#333f57;font-weight:600;margin-top:7px; margin-bottom:10px; margin-left:40px;margin-right:20px;">
                                                                                 바베큐 이용료 (원)<span class="bbq_fee"></span></li>
                                <li class="d-flex align-items-center justify-content-between"
                                    style="font-size:15px;color:#333f57;font-weight:600;margin-top:7px; margin-bottom:3px; margin-left:40px;margin-right:20px;">
                                                                                포인트(P)<input id="point" class="form-control point" type="text" style="width:170px; text-align:right;"  placeholder="0" value=""></li>
                                <li id="my_point"style="text-align:right; font-size:15px;color:#333f57;font-weight:600;margin-top:7px; margin-bottom:10px; margin-left:40px;margin-right:20px;">
                                                                                 보유 : 100,000P &nbsp;&nbsp;<a id="bt_use_point"type="button" style="text-decoration:underline; color:#ff6b6b"> 전액 사용</a></li>
								<!-- <li style="cursor:pointer; font-size:15px;color:#ff6b6b;font-weight:600;margin-top:7px; margin-bottom:10px; margin-left:600px;margin-right:20px;">
									 &nbsp;<u>전액 사용</u>
								</li> -->
                            </ul>
                            <!-- <div class="section-block-2 mt-4"></div> -->
                            <ul class="booking-list total-list mt-4">
                                <li class="d-flex align-items-center justify-content-between"
                                style="font-size:20px;color:#ff6b6b;font-weight:600;margin-top:7px; margin-bottom:40px;margin-left:40px;margin-right:20px;">
                                                                        총 액(원)
                                <span class="color-text camp_total"style="font-size:20px;color:#333f57;font-weight:600;"></span></li>
                            </ul>		 
   					 
 			<!-- <div class="billing-content">
                 <div class="contact-form-action">
   					 
   					 <div class="col-lg-6">
                          <div class="input-box">
                              <label class="label-text">이용료와 수수료</label>
                              <div class="form-group">
                                  	45,000원
                              </div>
                          </div>
                     </div>end col-lg-6
                     <div class="col-lg-6">
                          <div class="input-box">
                              <label class="label-text">포인트</label>
                              <div class="form-group">
                                  	0P
                              </div>
                          </div>
                     </div>end col-lg-6
                 </div>
           </div>     -->
                    
                    
                    <div class="payment-option">
                        <div class="billing-title-wrap pt-0">
                            <h3 class="widget-title pb-0">결제 수단</h3>
                            <div class="title-shape margin-top-10px"></div>
                        </div><!-- billing-title-wrap -->
                        <div class="payment-method-wrap p-4">
                        
                        <div class="payment-tab">
                                <div class="payment-trigger">
                                    <label class="payment-radio">
                                        <input type="radio" name="radio">
                                        <span class="checkmark"></span>
                                         <img src="/images/kakaopay.png"/>
                                       <span>&nbsp; 카카오 페이</span>
                                    </label>
                                </div><!-- end payment-trigger -->
                        </div><!-- end payment-tab -->
                        
                        <div class="payment-tab">
                                <div class="payment-trigger">
                                    <label class="payment-radio">
                                        <input type="radio" name="radio">
                                        <span class="checkmark"></span>
                                       <img src="https://img.icons8.com/android/24/000000/bank-card-back-side.png"/>
                                       </span><span> &nbsp;카드</span>
                                    </label>
                                </div><!-- end payment-trigger -->
                        </div><!-- end payment-tab -->
                        
                        
                            <!-- start 무통장입금..등등 
                            <div class="payment-tab">
                                <div class="payment-trigger">
                                    <label class="payment-radio">
                                        <input type="radio" name="radio">
                                        <span class="checkmark"></span>
                                       <span>무통장 입금</span>
                                        <div class="payment-content payment-active mt-2">
                                            <div class="section-heading">
                                                <p class="sec__desc font-size-15 line-height-24">
                                                    	우리은행 1002-000-000-00 </br>
                                                    	예금주 : 홍길동 </br>
                                                    	2020-08-04까지 입금
                                                </p>
                                            </div>
                                        </div>end payment-content
                                    </label>
                                </div>end payment-trigger
                            </div>end payment-tab
                            <div class="payment-tab">
                                <div class="payment-trigger">
                                    <label class="payment-radio">
                                        <input type="radio" name="radio">
                                        <span class="checkmark"></span>
                                        <span>신용카드 / 체크카드</span>
                                        <span class="card-icon float-right"><img src="/images/payment-img.png" alt=""></span>
                                        <div class="payment-content payment-active mt-3">
                                            <div class="contact-form-action">
                                                <form>
                                                     <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="input-box">
                                                                <label class="label-text">카드 번호</label>
                                                                <div class="form-group">
                                                                    <span class="la la-pencil form-icon"></span>
                                                                    <input class="form-control" name="text" placeholder="1234  5678  9876  5432" required="" type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                        <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="input-box">
                                                                <label class="label-text">만료 월</label>
                                                                <div class="form-group">
                                                                    <span class="la la-pencil form-icon"></span>
                                                                    <input class="form-control" placeholder="MM" required="" name="text" type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="input-box">
                                                                <label class="label-text">만료 연도</label>
                                                                <div class="form-group">
                                                                    <span class="la la-pencil form-icon"></span>
                                                                    <input class="form-control" placeholder="YY" required="" name="text" type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="input-box">
                                                                <label class="label-text">CVV</label>
                                                                <div class="form-group">
                                                                    <span class="la la-lock form-icon"></span>
                                                                    <input class="form-control" placeholder="CVV" required="" name="text" type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>end payment-content
                                    </label>
                                </div>end payment-trigger
                            </div>end payment-tab
                            <div class="payment-tab">
                                <div class="payment-trigger">
                                    <label class="payment-radio paypal-option">
                                        <input type="radio" name="radio">
                                        <span class="checkmark"></span>
                                        <span>Paypal</span>
                                        <span class="card-icon float-right"><img src="/images/paypal.png" alt=""></span>
                                        <div class="payment-content payment-active mt-2">
                                            <div class="section-heading">
                                                <p class="sec__desc font-size-15 line-height-24">
                                                    You will be redirected to PayPal to complete payment.
                                                </p>
                                            </div>
                                        </div>end payment-content
                                    </label>
                                </div>end payment-trigger
                            </div> 
                            <!-- end payment-tab ///////end 무통장입금..등등-->
                       
                        <!--start 이용약관-->
                        <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">이용 약관</h3>
                        <div class="title-shape margin-top-10px"></div>
                   		</div><!-- billing-title-wrap -->

                           <!--  <div class="section-block-2 mt-4"></div> 얇은 실선-->
                           <div class="btn-box mt-4">
                                <div class="custom-checkbox">
                               		<input type="checkbox" id="chbAll">
                                    <label for="chbAll" style="font-size:17px; font-weight: bold; margin-bottom:10px">전체 동의 </label>
                                    <input type="checkbox" id="chb1" class="chb" name="chb" id="chb1">
                                    <label style="margin-bottom:5px"for="chb1">[필수] 만 14세 이상 이용 동의 </label>
                                    <input type="checkbox" id="chb2" class="chb" name="chb" id="chb2">
                                    <label for="chb2" style="margin-bottom:5px" class="d-flex align-items-center justify-content-between">[필수] 이용규칙 동의
                                    
                                    <a id="bt_use" role="button" class="color-text" data-toggle="collapse" data-target="#rules1">보기</a></label>
				                        <div id="rules1" class="collapse">
				                      	  <div id="rules_area1"class="card card-body" style="overflow:scroll; width:720px; height:200px;">
										    이용규칙
										  </div>
										</div>
                                    
                                    <input type="checkbox" id="chb3" class="chb" name="chb" id="chb3">
                                    <label for="chb3" style="margin-bottom:5px" class="d-flex align-items-center justify-content-between">[필수] 취소 및 환불 규칙 동의
                                     <a id="bt_refund" role="button" class="color-text" data-toggle="collapse" data-target="#rules2">보기</a></label>
				                        <div id="rules2" class="collapse">
				                      	  <div id="rules_area2"class="card card-body" style="overflow:scroll; width:720px; height:200px;">
										    취소 및 환불 규칙
										  </div>
										</div>
                                    
                                    <input type="checkbox" id="chb4" class="chb" name="chb" id="chb4">
                                    <label for="chb4" style="margin-bottom:5px" class="d-flex align-items-center justify-content-between">[필수] 개인정보 수집 및 이용 동의 
                                    <a id="bt_privacy" role="button" class="color-text" data-toggle="collapse" data-target="#rules3">보기</a></label>
				                        <div id="rules3" class="collapse">
				                      	  <div id="rules_area3"class="card card-body" style="overflow:scroll; width:720px; height:200px;">
										    개인정보 수집 및 이용 규칙
										  </div>
										</div>
                                    
                                    <input type="checkbox" id="chb5" class="chb" name="chb" id="chb5">
                                    <label for="chb5" style="margin-bottom:5px" class="d-flex align-items-center justify-content-between">[필수] 개인정보 제3자 제공 동의
                                    <a id="bt_privacy3" role="button" class="color-text" data-toggle="collapse" data-target="#rules4">보기</a></label>
				                        <div id="rules4" class="collapse">
				                      	  <div id="rules_area4"class="card card-body" style="overflow:scroll; width:720px; height:200px;">
										    개인정보 제3자 제공 규칙
										  </div>
										</div>
                                    <!-- <input class="chb" type="checkbox" id="chb5">
                                    <label for="chb1">[필수] 개인정보 제3자 제공 동의 <a href="#" class="color-text">보기</a></label> -->
                                </div>
                                <button disabled="" id="bt_pay"type="submit" class="btn btn-primary btn-block"
                                		style="background-color:#ff6b6b; border-color:#ff6b6b" type="submit" >70,000원 결제하기
                                </button>
                                <!--버튼 원래 클래스 - theme-btn border-0 mt-5-->
                            </div> <!--end checkbox -->
                        </div>
                    </div> 
                </div><!-- end billing-form-item -->
            </div><!-- end col-lg-8 -->

            <div class="col-lg-4">
                <div class="card-item">
                    <!--  <a class="card-image-wrap"> -->
                        <div class="card-image">
                            <img id="camp_thumb" src="/images/img25.jpg" class="card__img" alt="">
                           
                            <span class="badge" style="color:white"> <span class="la la-star"></span>4.6</span>
                        </div>
                    <!-- </a> -->
                    <div class="card-content-wrap">
                        <div class="card-content">
                        <!-- margin-top:10px; margin-bottom:20px; -->
                                <h3  style="font-size:30px;color:#333f57;font-weight:600;margin-top:7px; margin-bottom:10px;">위캠 캠핑장</h3>
                                <p class="card-sub">강원도 어쩌고 주소</p>
                        </div>
                    </div><!-- end card-content-wrap -->
                </div><!-- end 숙소 요약 정보 -->
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">요약 정보</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="booking-summary">
                            <ul class="booking-list">
                                <li class="d-flex align-items-center justify-content-between">날짜 <span class="booking_date"></span></li>
                                <li class="d-flex align-items-center justify-content-between">인원 <span class="peopleNum"></span></li>
                                <li id="charge" class="d-flex align-items-center justify-content-between"data-container="body" data-toggle="popover"
                                	data-content="수수료는 위캠프 플랫폼을 운영하고 연중무휴 고객 지원과 같은 다양한 서비스를 제공하는데 사용됩니다." data-placement="left"
                                	style="cursor:pointer">
                                	 <u>서비스 수수료(원)</u> <span class="service_fee"></span>
                                </li>
                                <li class="d-flex align-items-center justify-content-between">캠핑 이용료(원) <span class="camp_fee"></span></li>
                                <li class="d-flex align-items-center justify-content-between">바베큐 이용료(원)<span class="bbq_fee"></span></li>
                                <li class="d-flex align-items-center justify-content-between">포인트(P) <span class="point" id="use_point"></span></li>
                            </ul>
                            <div class="section-block-2 mt-4"></div>
                            <ul class="booking-list total-list mt-4">
                                <li class="d-flex align-items-center justify-content-between">총 액(원)<span class="color-text camp_total"></span></li>
                            </ul>
                            <!-- <div class="coupon-widget mt-4">
                                <div class="contact-form-action">
                                    <form method="post">
                                         <div class="row">
                                            <div class="col-lg-8 pr-0">
                                               <div class="input-box">
                                                   <div class="form-group mb-0">
                                                       <span class="la la-file-code-o form-icon"></span>
                                                       <input class="form-control" type="text" name="name" placeholder="Enter Coupon code">
                                                   </div>
                                               </div>
                                            </div>end col-lg-8
                                            <div class="col-lg-4">
                                              <div class="btn-box">
                                                  <button class="theme-btn border-0" type="submit">apply</button>
                                              </div>
                                            </div>end col-lg-8
                                        </div>end row 
                                    </form>
                                </div>end contact-form-action
                            </div> end coupon-widget mt-4 end
                            -->
                        </div><!-- end booking-summary -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
            </div><!-- end col-lg-4 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end booking-area-->
<!-- ================================
    END BOOKING AREA
================================= -->
<!-- ================================
    FORM AREA
================================= -->
<form>
<input id="originalCampFee" type="hidden" value="">
</form>
<script src="/js/custom-booking.js"></script>