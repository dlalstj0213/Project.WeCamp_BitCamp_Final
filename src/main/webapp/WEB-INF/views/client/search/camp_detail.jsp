<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

   <style>
		.select-pointer{
			cursor:pointer
		}

       #weatherTable {
              text-align:center;
              font-size:12px;
              color:#646464;
              width:350px;
       }               

       .borderbar {
              border-right:1px solid #cecece;
       }
       .divisionBorderbar {
        	  border-color:black;
              border-right:4px solid #cecece;
             
       }

/*        span {
              color:#7B7B7B;
              font-size:11px;
              float:right;
       }    */               

       .max {
              display:inline;
              padding-left:5px;
              color:red;
              font-weight:bold;
              font-size:12px;
       }

       .min {
              display:inline;
              padding-left:5px;
              color:blue;
              font-weight:bold;
              font-size:12px;
       }
       
       .date{
       		font-size:18px;
       		font-weight: bold;
       }
    </style>
    
<!-- ================================
    START BREADCRUMB AREA
================================= -->
<section class="breadcrumb-area listing-detail-breadcrumb">
    <div class="breadcrumb-wrap">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 position-relative">
                    <div class="breadcrumb-content">
                    
                    	<input type="hidden" name="campName" id="campName" value="${camp.camp_name}">
                    	<input type="hidden" name="address" id="address" value="${camp.address}">
                    	<input type="hidden" name="camp_idx" id="camp_idx" value="1">
                    	
                        <h2 class="breadcrumb__title">${camp.camp_name}</h2>
                        <p class="breadcrumb__desc">
                           <span class="la la-map-marker"></span> ${camp.address}
                        </p>
                        <ul class="listing-info mt-3 mb-3">
                            <li>
                                <div class="average-ratings">
                                    <span class="theme-btn button-success">
                                        4.2 <i class="la la-star"></i>
                                    </span>
                                    <span><strong>36</strong> Reviews</span>
                                </div>
                            </li>
                        </ul>
                        <ul class="listing-info">
                            <li><button type="button" class="theme-btn border-0"><i class="la la-heart-o"></i> save</button></li>
                            <li>
                                <div class="dropdown share-dropmenu">
                                    <button class="theme-btn dropdown-toggle border-0 after-none" type="button" id="dropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="la la-external-link"></i> share
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenu">
                                       <a href="#" class="dropdown-item"><i class="fa fa-facebook"></i> facebook</a>
                                       <a href="#" class="dropdown-item"><i class="fa fa-twitter"></i> twitter</a>
                                       <a href="#" class="dropdown-item"><i class="fa fa-instagram"></i> instagram</a>
                                       <a href="#" class="dropdown-item"><i class="fa fa-tumblr"></i> Tumblr</a>
                                       <a href="#" class="dropdown-item"><i class="fa fa-snapchat"></i> snapchat </a>
                                       <a href="#" class="dropdown-item"><i class="fa fa-google-plus"></i> Google plus </a>
                                       <a href="#" class="dropdown-item"><i class="fa fa-pinterest"></i> pinterest </a>
                                       <a href="#" class="dropdown-item"><i class="fa fa-vk"></i> VKontakte </a>
                                       <a href="#" class="dropdown-item"><i class="fa fa-linkedin"></i> linkedin </a>
                                       <a href="#" class="dropdown-item"><i class="fa fa-youtube-play"></i> youtube </a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div><!-- end breadcrumb-content -->
                    <div class="report-list-items">
                        <ul class="listing-info">
                            <li>
                            </li>
                        </ul>
                    </div><!-- end report-list-items -->
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
    START SINGLE LISTING AREA
================================= -->
<section class="single-listing-area padding-top-35px">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="single-listing-wrap">
                    <h2 class="widget-title">갤러리</h2>
                    <div class="title-shape"></div>
                    <div class="gallery-carousel padding-top-35px padding-bottom-40px">
                    <c:forEach items="${ImgDetailList}" var="campDetailImg">
                        <div data-dot="<img src='/images/camp-img/detail/${campDetailImg.fname}'>" class="gallery-item">
                            <img src="/images/camp-img/detail/${campDetailImg.fname}" alt="gallery-image">
                        </div><!-- end gallery-item -->
                    </c:forEach>
                        <%-- <div data-dot="<img src='/images/flag11.png'>" class="gallery-item">
                            <img src="/images/flag11.png" alt="gallery-image">
                        </div><!-- end gallery-item --> --%>
                    </div><!-- end gallery-carousel -->
                    <div class="listing-description padding-bottom-35px">
                        <h2 class="widget-title">캠핑장 소개</h2>
                        <div class="title-shape"></div>
                        <div class="section-heading mt-4">
                            <p class="sec__desc font-size-16">
      				             ${camp.intro}
                            </p>
                        </div>
                    </div><!-- end 캠핑장 소개 -->
					
                    <div class="feature-listing padding-bottom-20px">
                        <h2 class="widget-title">캠핑 사이트</h2>
                        <div class="title-shape"></div>
                      
                         <!-- 카테고리 -->
                         <c:forEach var="sortList" items="${sortNameList}" varStatus="status">
								<!-- 카라반, 글램핑 -->
                         <%-- <c:forEach begin="0" end="${sortNameSize}" step="1" varStatus="sortNameList"> --%>
                         <%-- <c:forEach items="${sortNameList}" var="sortList"> --%>
							<br/><p class=“font-weight-medium” style="font-size:1.5em"> 
								<img src="data:image/png;base64,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">
								&nbsp;${sortList}
								
								</p><br/>
						<!-- end 카테고리 -->
						 
						<c:forEach items="${list}" varStatus="i">
							    <c:forEach items="${list[i.index]}" var="sort"> 
							    	<c:if test="${sortList eq sort.sort_name}">
							    	 <c:set var="j" value="${j+1}"/>
			                        	<div class="card mb-3 select-pointer" onclick="selectSite(${j})">
			                        	<input type="hidden" id="category${j}" value="글램핑"/>   
										  <div class="row no-gutters">
										    <div class="col-md-4">
										      <img id="img${j}" src="/images/camp-img/sort/${sort.fname}" height=200 width=540 class="card-img">
										    </div>
										    <div class="col-md-8">
										      <div class="card-body">
										        <h5 id="campZone${j}" class="card-title"> ${sort.site_name}</h5>
										        <p class="card-text">
										        	인원 제한 수 : <strong id="maxPeople${j}"> ${sort.people_num}</strong>
										        	<br/>
										        	가격 : <strong id="price${j}" class="price">${sort.site_fee}</strong> 원
										        </p>
										        <p class="card-text"><small class="text-muted">3분 전에 업데이트 됨</small></p>
										      </div>
										    </div>
										  </div>
										</div> <!-- end 카드 -->
									</c:if>
								 </c:forEach> 
								<!-- end sort --> 
		                    </c:forEach> 
		                  </c:forEach>
						<%--
                        <!-- 카테고리 -->
							<br/><p class=“font-weight-medium” style="font-size:1.5em"> 
								<img src="data:image/png;base64,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">
								&nbsp;카라반
								</p><br/>
						<!-- end 카테고리 -->
							<div class="card mb-3 select-pointer" onclick="selectSite(3)">
							<input type="hidden" id="category3" value="카라반"/>
							  <div class="row no-gutters">
							    <div class="col-md-4">
							       <img id="img3" src="/images/flag11.png" height=200 width=540 class="card-img" >
							    </div>
							    <div class="col-md-8">
							      <div class="card-body">
							        <h5 id="campZone3" class="card-title">Zone - C</h5>
							        <p class="card-text">
							        	인원 제한 수 : <strong id="maxPeople3">6</strong>
							        	<br/>
							        	가격 : <strong id="price3" class="price">20000</strong> 원
							        </p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
							      </div>
							    </div>
							  </div>
							</div> <!-- end 카드 -->
							 --%>
                    </div><!-- end 캠핑 사이트 -->
					
                    <div class="feature-listing padding-bottom-20px">
                        <h2 class="widget-title">시설 이용</h2>
                        <div class="title-shape"></div>
                        <ul class="list-items mt-4">
                            <li><i class="la la-check-circle-o color-text font-size-18"></i> 편의점 시설 제공</li>
                            <li><i class="la la-check-circle-o color-text font-size-18"></i> 공용 샤워실 제공</li>
                            <li><i class="la la-check-circle-o color-text font-size-18"></i> 애완동물 출입 가능</li>
                            <li><i class="la la-check-circle-o color-text font-size-18"></i> 개인 개수대 제공</li>
                            <li><i class="la la-check-circle-o color-text font-size-18"></i> 개인 화장실 제공</li>
                            <li><i class="la la-check-circle-o color-text font-size-18"></i> 캠핑장 외 주차장</li>
                            <li><i class="la la-check-circle-o color-text font-size-18"></i> 그 외</li>
                        </ul>
                    </div><!-- end 시설 이용 -->

                    <div class="listing-map gmaps">
                        <h2 class="widget-title">캠핑장 위치</h2>
                        <div class="title-shape margin-bottom-35px"></div>
                        <div id="map">
                        
<!-- ================================
    START KakaoMap AREA
================================= -->
<div id="map" style="width:100%;height:350px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5f0aec9df013aa05ae74510780014c2b&libraries=services"></script>
<!-- ================================
   	END KakaoMap AREA
================================= -->                        
                        
                        </div>
                    </div><!-- end 캠핑장 위치 -->
                 <br/>
                 <!-- <div class="listing-description padding-bottom-35px"> -->
                    <h2 id="weather" class="widget-title">날씨</h2>
                        <div class="title-shape margin-bottom-35px"></div>
                    <!-- weather widget start -->
                    <table id="weatherTable">
                    <!--8/17부분-->
                    <tr align ="center">
						<th colspan = "4" class="divisionBorderbar"><div id="date0" class="date" style="margin-bottom:10px" ></div></th>
						<th colspan = "4" ><div id="date4" class="date" style="margin-bottom:10px"></div></th>
				    </tr>
				    <tr>
            			<td class="borderbar">
                                 <div id="hour0">시</div>
                                 <div id="cicon0" class="cicon"></div>
                                 <div>기온<div id="ctemp0" class="max chightemp"> ℃</div></div>
                                 <div>강수 확률<div id="pop0" class="min pop"> %</div></div>
                           </td>
                           <td class="borderbar">
                                 <div id="hour1">시</div>
                                 <div id="cicon1" class="cicon"></div>
                                 <div>기온<div id="ctemp1" class="max temp"> ℃<strong></strong></div></div>
                                 <div>강수 확률<div id="pop1" class="min pop"> %</div></div>
                           </td>
                           <td class="borderbar">
                                 <div id="hour2">시</div>
                                 <div id="cicon2" class="cicon"></div>
                                 <div>기온<div id="ctemp2" class="max temp"> ℃<strong></strong></div></div>
                                 <div>강수 확률<div id="pop2" class="min pop"> %</div></div>
                           </td>
                           <td class="divisionBorderbar">
                                 <div id="hour3">시</div>
                                 <div id="cicon3" class="cicon"></div>
                                 <div>기온<div id="ctemp3" class="max temp"> ℃<strong></strong></div></div>
                                 <div>강수 확률<div id="pop3" class="min pop"> %</div></div>
                           </td>
                  <!-- 8/18부분
                   <tr align ="center">
						<td colspan = "4"><div id="date4" class="date" ></div></td>
				   </tr> -->
                           <td class="borderbar">
                               <div id="hour4">시</div>
                                 <div id="cicon4" class="cicon"></div>
                                 <div>기온<div id="ctemp4" class="max temp"> ℃<strong></strong></div></div>
                                 <div>강수 확률<div id="pop4" class="min pop"> %</div></div>
                           </td>
                           <td class="borderbar">
                                 <div id="hour5">시</div>
                                 <div id="cicon5" class="cicon"></div>
                                 <div>기온<div id="ctemp5" class="max temp"> ℃<strong></strong></div></div>
                                 <div>강수 확률<div id="pop5" class="min pop"> %</div></div>
                           </td>
                            <td class="borderbar">
                                 <div id="hour6">시</div>
                                 <div id="cicon6" class="cicon"></div>
                                 <div>기온<div id="ctemp6" class="max temp"> ℃<strong></strong></div></div>
                                 <div>강수 확률<div id="pop6" class="min pop"> %</div></div>
                           </td>
                            <td class="borderbar">
                                 <div id="hour7">시</div>
                                 <div id="cicon7" class="cicon"></div>
                                 <div>기온<div id="ctemp7" class="max temp"> ℃<strong></strong></div></div>
                                 <div>강수 확률<div id="pop7" class="min pop"> %</div></div>
                           </td>
                    </tr>
             </table>
             <!-- weather widget end -->
               <!--   </div> -->
                    <div class="contact-listing padding-top-40px padding-bottom-40px">
                        <h2 class="widget-title">캠핑장 정보</h2>
                        <div class="title-shape"></div>
                        <div class="info-list margin-top-35px padding-bottom-35px">
                            <ul>
                                <li class="mb-2"><span><i class="la la-map-marker"></i> 주소:</span>${camp.address}</li>
                                <li class="mb-2"><span><i class="la la-envelope-o"></i> 이메일:</span><a href="mailto:example@gmail.com">example@gmail.com</a></li>
                                <li class="mb-2"><span><i class="la la-phone"></i> 전화번호:</span><a href="#">${camp.camp_tel}</a></li>
                                <li><span><i class="la la-external-link-square"></i> 웹사이트:</span><a href="#">www.techydevs.com</a></li>
                            </ul>
                        </div>
                        <div class="section-block"></div>
                        <div class="social-contact padding-top-40px">
                            <a href="#" class="theme-btn facebook-link"><i class="fa fa-facebook"></i> Facebook</a>
                            <a href="#" class="theme-btn twitter-link"><i class="fa fa-twitter"></i> Twitter</a>
                            <a href="#" class="theme-btn instagram-link"><i class="fa fa-instagram"></i> Instagram</a>
                            <a href="#" class="theme-btn linkedin-link"><i class="fa fa-linkedin"></i> Linkedin</a>
                            <a href="#" class="theme-btn youtube-link"><i class="fa fa-youtube-play"></i> Youtube</a>
                        </div>
                    </div><!-- end 캠핑장 정보 -->
                    
                    <div class="review-content-wrap">
                        <h2 class="widget-title">리뷰</h2>
                        <div class="title-shape"></div>
                        <div class="review-content padding-top-45px padding-bottom-40px">
                            <div class="review-rating-summary">
                                <div class="review-rating-summary-inner">
                                    <div class="stats-average__count">
                                        <span class="stats-average__count-count">4.4</span>
                                    </div><!-- end stats-average__count -->
                                    <div class="stats-average__rating">
                                        <div class="rating-rating d-flex">
                                            <span class="la la-star ml-0"></span>
                                            <span class="la la-star ml-0"></span>
                                            <span class="la la-star ml-0"></span>
                                            <span class="la la-star ml-0"></span>
                                            <span class="la la-star-half-full ml-0"></span>
                                        </div>
                                        <p class="stats-average__rating-rating"> (1.233)</p>
                                    </div><!-- end stats-average__rating -->
                                </div><!-- end review-rating-summary-inner -->
                                <div class="course-rating-text">
                                    <p class="course-rating-text__text">Food Rating</p>
                                </div><!-- end course-rating-text -->
                            </div><!-- end review-rating-summary -->
                            <div class="review-rating-widget">
                                <div class="review-rating-rate">
                                    <ul>
                                        <li class="review-rating-rate__items">
                                            <div class="review-rating-inner__item">
                                                <div class="review-rating-rate__item-text">5 stars</div>
                                                <div class="review-rating-rate__item-fill">
                                                    <span class="review-rating-rate__item-fill__fill rating-fill-width1"></span>
                                                </div>
                                                <div class="review-rating-rate__item-percent-text">77 %</div>
                                            </div>
                                        </li>
                                        <li class="review-rating-rate__items">
                                            <div class="review-rating-inner__item">
                                                <div class="review-rating-rate__item-text">4 stars</div>
                                                <div class="review-rating-rate__item-fill">
                                                    <span class="review-rating-rate__item-fill__fill rating-fill-width2"></span>
                                                </div>
                                                <div class="review-rating-rate__item-percent-text">54 %</div>
                                            </div>
                                        </li>
                                        <li class="review-rating-rate__items">
                                            <div class="review-rating-inner__item">
                                                <div class="review-rating-rate__item-text">3 stars</div>
                                                <div class="review-rating-rate__item-fill">
                                                    <span class="review-rating-rate__item-fill__fill rating-fill-width3"></span>
                                                </div>
                                                <div class="review-rating-rate__item-percent-text">14 %</div>
                                            </div>
                                        </li>
                                        <li class="review-rating-rate__items">
                                            <div class="review-rating-inner__item">
                                                <div class="review-rating-rate__item-text">2 stars</div>
                                                <div class="review-rating-rate__item-fill">
                                                    <span class="review-rating-rate__item-fill__fill rating-fill-width4"></span>
                                                </div>
                                                <div class="review-rating-rate__item-percent-text">5 %</div>
                                            </div>
                                        </li>
                                        <li class="review-rating-rate__items">
                                            <div class="review-rating-inner__item">
                                                <div class="review-rating-rate__item-text">1 stars</div>
                                                <div class="review-rating-rate__item-fill">
                                                    <span class="review-rating-rate__item-fill__fill rating-fill-width5"></span>
                                                </div>
                                                <div class="review-rating-rate__item-percent-text">2 %</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div><!-- end review-rating-rate -->
                            </div><!-- end review-rating-widget -->
                        </div><!-- end review-content -->
                    </div><!-- end review-content-wrap -->
                    <div class="comments-wrap">
                        <h2 class="widget-title">5 리뷰 댓글</h2>
                        <div class="title-shape"></div>
                        <ul class="comments-list padding-top-40px">
                            <li>
                                <div class="comment">
                                    <img class="avatar__img" alt="" src="/images/testi-img1.jpg">
                                    <div class="comment-body">
                                        <div class="meta-data">
                                            <span class="comment__author">이민서</span>
                                            <span class="comment__date">리뷰 2일 전</span>
                                            <div class="rating-rating">
                                                <span class="la la-star"></span>
                                                <span class="la la-star"></span>
                                                <span class="la la-star"></span>
                                                <span class="la la-star"></span>
                                                <span class="la la-star-half-full"></span>
                                            </div>
                                        </div>
                                        <p class="comment-content">
                                        	만두 만두만두만두 !!
                                        </p>
                                    </div>
                                </div><!-- end 리뷰댓글 -->
                                
                                <div class="comment">
                                    <img class="avatar__img" alt="" src="/images/testi-img1.jpg">
                                    <div class="comment-body">
                                        <div class="meta-data">
                                            <span class="comment__author">정혜원</span>
                                            <span class="comment__date">리뷰 4일 전</span>
                                            <div class="rating-rating">
                                                <span class="la la-star"></span>
                                                <span class="la la-star"></span>
                                                <span class="la la-star"></span>
                                                <span class="la la-star"></span>
                                                <span class="la la-star"></span>
                                            </div>
                                        </div>
                                        <p class="comment-content">
                                        	딸기가 죠아!~ 딸기가 죠아!~
                                        </p>
                                    </div>
                                </div><!-- end 리뷰댓글 -->
                            </li>
                        </ul>
                        <div class="section-block"></div>
                        <div class="button-shared padding-top-40px text-center">
                            <button type="button" class="theme-btn border-0">
                                <span class="la la-refresh"></span> Load more review
                            </button>
                        </div><!-- end button-shared -->
                    </div><!-- end comments-wrap -->
                </div><!-- end single-listing-wrap -->
            </div><!-- end col-lg-8 -->
            
            
            <div class="col-lg-4">
                <div class="sidebar section-bg">
                    <div class="sidebar-widget">
                        <div class="author-bio margin-bottom-30px">
                            <div class="d-flex align-items-center">
                                <img src="/images/testi-img2.jpg" alt="author-image">
                                <div class="author-inner-bio">
                                    <h4 id="focusHere" class="author__title font-weight-bold pb-0 mb-1">로그인유저 이름</h4>
                                </div>
                            </div>
                        </div>
                        <div class="info-list">
                            <ul>
                                <li class="mb-2"><i class="la la-birthday-cake"></i>&nbsp;생년월일</li>
                                <li class="mb-2"><i class="la la-envelope-o"></i><a href="mailto:example@gmail.com">&nbsp;이메일</a></li>
                                <li class="mb-2"><i class="la la-diamond"></i><a href="#">&nbsp;등급</a></li>
                                <li class="mb-2"><i class="la la-money"></i>&nbsp;포인트</li>
                            </ul>
                        </div>
                        <div class="section-block-2 margin-top-35px margin-bottom-35px"></div>
                        <div class="btn-box text-center">
                            <a href="user-profile.html" class="theme-btn d-block">
                                <span class="la la-user"></span> view profile
                            </a>
                        </div>
                    </div><!-- end sidebar-widget -->
                    <div class="sidebar-widget date-widget">
                        <h3 id="bookingBox" class="widget-title">예약</h3>
                        <div class="title-shape"></div>
                        <!-- start 선택된 캠핑 띄우기 -->
						<div class="similar-list padding-top-30px">
                            <div class="recent-item mb-3">
                                <div id="selectedImg" class="recent-img">
                                </div><!-- end recent-img -->
                                <div id="selectedBody" class="recentpost-body">
                                	<h4 class='recent__link'></h4>
                                		<p class='recent__meta'><span class='color-text font-weight-bold'>선택된 캠핑장이 없습니다.</span></p>
                                </div><!-- end recent-img -->
                            </div><!-- end recent-item -->
                            <div class="check-box-list show-more-item mt-4 mb-4 customize-checkbox">
                            </div>
                            </div>
                              <!-- end 선택된 캠핑 띄우기 -->
                       <div class="contact-form-action padding-top-35px">
                           <form>
                               <div class="form-group">
                                   <span class="la la-calendar-o form-icon"></span>
                                   <input id="initDate" class="date-range form-control" type="text" name="daterange" value=""/>
                                   <input id="check-in" type="hidden" value="">
                                   <input id="check-out" type="hidden" value="">
                               </div>
                           </form>
                           
                       </div>
                        <div class="booking-content d-flex align-items-center justify-content-between text-center">
                            <div class="input-number-group">
                                <p>People</p>
                                <div class="input-group-button">
                                    <span class="input-number-decrement">-</span>
                                </div>
                                <input id="peopleNum" class="input-number peopleNum" type="number" value="0" min="0" max="0">
                                <div class="input-group-button">
                                    <span class="input-number-increment">+</span>
                                </div>
                            </div><!-- end input-number-group -->
                        </div><!-- end booking-content -->
                        <div class="btn-box text-center padding-top-35px">
                             <div id="booking-event" class="theme-btn d-block" onclick="setSessionAndSubmit()">캠핑장을 선택해주세요</div>
                        </div><!-- end btn-box -->
                    </div><!-- end sidebar-widget -->
                </div><!-- end sidebar -->
            </div><!-- end col-lg-4 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end single-listing-area -->
<!-- ================================
    END SINGLE LISTING  AREA
================================= -->

<!-- ================================
    START CARD AREA
================================= -->
<section class="card-area padding-top-80px padding-bottom-100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading">
                    <h2 class="widget-title">자주 찾는 캠핑장( 또는 주변 관광지 )</h2>
                    <div class="title-shape"></div>
                </div><!-- end section-heading -->
            </div><!-- end col-lg-8 -->
        </div><!-- end row -->
        <div class="row padding-top-40px">
            <div class="col-lg-12">
                <div class="card-carousel card-static">
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="/images/img28.jpg" class="card__img" alt="">
                                <span class="badge">now open</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-cutlery"></span> Restaurant</h5>
                                    <h4 class="card-title">Favorite Place Food Bank
                                        <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="Claimed"></i>
                                    </h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="/images/small-team1.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.5</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="/images/img29.jpg" class="card__img" alt="">
                                <span class="badge badge-closed">closed</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-plane"></span> travel</h5>
                                    <h4 class="card-title">beach blue boardwalk</h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="/images/small-team2.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.6</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="/images/img30.jpg" class="card__img" alt="">
                                <span class="badge">now open</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-hotel"></span> hotel</h5>
                                    <h4 class="card-title">
                                        hotel govendor <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="Claimed"></i>
                                    </h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="/images/small-team3.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.7</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="/images/img31.jpg" class="card__img" alt="">
                                <span class="badge">now open</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom"
                                      title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-music"></span> event</h5>
                                    <h4 class="card-title">sticky band party</h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="/images/small-team4.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.5</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="/images/img32.jpg" class="card__img" alt="">
                                <span class="badge badge-closed">closed</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-shopping-cart"></span> shop</h5>
                                    <h4 class="card-title">Sena Clothing Shopping Mall</h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="/images/small-team5.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.6</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="/images/img30.jpg" class="card__img" alt="">
                                <span class="badge">now open</span>
                                <span class="badge-toggle" data-toggle="tooltip" data-placement="bottom" title="22 Likes">
                                    <i class="la la-heart-o"></i>
                                </span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="listing-details.html">
                                    <h5 class="card-meta"><span class="la la-hotel"></span> hotel</h5>
                                    <h4 class="card-title">
                                        hotel govendor <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="Claimed"></i>
                                    </h4>
                                    <p class="card-sub">Bishop Avenue, New York</p>
                                </a>
                                <a href="#" class="author-img">
                                    <img src="/images/small-team6.jpg" alt="author-img">
                                </a>
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span> (416) 551-0589</li>
                                    <li><span class="la la-link"></span>
                                        <a href="#"> www.mysitelink.com</a>
                                    </li>
                                    <li><span class="la la-calendar-check-o"></span>
                                        Posted 1 month ago
                                    </li>
                                </ul>
                            </div>
                            <div class="rating-row">
                                <div class="rating-rating">
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star"></span>
                                    <span class="la la-star-half-full"></span>
                                    <span class="la la-star last-star"></span>
                                    <span class="rating-count">4.7</span>
                                </div>
                                <div class="listing-info">
                                    <ul>
                                        <li><span class="la la-eye info__count"></span> 247</li>
                                        <li><span class="la la-heart-o info__save" data-toggle="tooltip" data-placement="top" title="Bookmark"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
                </div><!-- end card-carousel -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end card-area -->

<!-- ================================
    END CARD AREA
================================= -->
<!-- ================================
    JAVASCRIPT
================================= -->
<script src="/js/kakao-map.js"></script>
<script src="/js/select-site.js"></script>
<script src="/js/camp-detail.js"></script>
<script src="/js/custom-weather.js"></script>

