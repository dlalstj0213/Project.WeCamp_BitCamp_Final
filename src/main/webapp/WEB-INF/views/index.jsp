<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <style>
    
    .card-image:after {
		background-color:#FFFFFF !important;
		opacity: 0% !important;
    }


  </style>

<!-- ================================
    START HERO-WRAPPER AREA
================================= -->

<section class="hero-wrapper hero-wrapper4">
    <div class="hero-overlay"></div><!-- end hero-overlay -->
    <div class="video-bg">
        <video src="video/slice-video.mp4" autoplay="true" muted loop="true"></video>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="hero-heading">
                    <div class="section-heading">
                        <h2 class="sec__title">You camp? We camp!</h2>
                        <p class="sec__desc">
                           머물고 쉬다 갈 캠핑장 찾아볼까요?
                        </p>
                    </div>
                </div><!-- end hero-heading -->
                <div class="main-search-input">
                    <div class="main-search-input-item">
                        <div class="contact-form-action">
                            <form action="#">
                                <div class="main-search form-group mb-0">
                                    <span class="la la-search form-icon"></span>
                                    <input id="search" class="form-control" type="text" placeholder="위치">
                                </div>
                            </form>
                        </div>
                    </div><!-- end main-search-input-item -->
                    <div class="main-search-input-item">
                    <div class="contact-form-action padding-top-29px" style="margin-top: 17px">
                               <div class="form-group">
                                   <span class="la la-calendar-o form-icon"></span>
                                   <input id="initDate" class="date-range form-control" type="text" name="daterange" value=""/>
                                   <input id="check-in" type="hidden" value="">
                                   <input id="check-out" type="hidden" value="">
                               </div>
                    </div><!-- end main-search-input-item -->
                    </div><!-- end main-search-input-item -->
                    <div class="main-search-input-item">
						<select class="custom-select" style="height: 50px;"  id="optionNo" name="optionNo" onchange='selectPeopleNum();'>
						  <option>1</option>
						  <option>2</option>
						  <option>3</option>
						  <option>4</option>
						  <option>5</option>
						  <option>6</option>
						  <option>7</option>
						  <option>8</option>
						  <option>9</option>
						  <option>10</option>
						  <option>more</option>
						</select>
                        <!-- <select class="select-option-field-2">
                            <option value >Select a Category</option>
                            <option value="1">Shops</option>
                            <option value="2">Hotels</option>
                            <option value="3">Foods & Restaurants</option>
                            <option value="4">Fitness</option>
                            <option value="5">Travel</option>
                            <option value="6">Salons</option>
                            <option value="7">Event</option>
                            <option value="8">Business</option>
                        </select> -->
                    </div><!-- end main-search-input-item -->
                    <div class="main-search-input-btn">
                        <button class="button theme-btn" type="button" onclick="submitSearch()">Search</button>
                    </div><!-- end main-search-input-btn -->
                </div><!-- end main-search-input -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
        
        <!-- request 할 데이터 -->
        <form id="searched-data" action="search/search.wcc" method="get">
        	<input type="hidden" id="searched-place" name="searchPlace" value="">
        	<input type="hidden" id="check-in" class="check-in" name="checkIn" value="">
        	<input type="hidden" id="check-out" class="check-out" name="checkOut" value="">
        	<input type="hidden" id="peopleNum" name="peopleNum" value="">
        </form>
        
    </div><!-- end container -->
    <div class="hero-svg-content text-center">
        <i class="fa fa-angle-down"></i>
    </div>
</section><!-- end hero-wrapper -->
<!-- ================================
    END HERO-WRAPPER AREA
================================= -->

<!-- ================================
    START CARD AREA
================================= -->
<section class="card-area text-center padding-top-100px padding-bottom-100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading">
                
                    <h2 class="sec__title before-none pt-0">가장 많이 예약한 캠핑장</h2>
                    <br/><div
					  class="fb-like"
					  data-share="true"
					  data-width="450"
					  data-show-faces="true">
					</div>
                    <p class="sec__desc">
                        Morbi convallis bibendum urna ut viverra. Maecenas quis consequat libero, <br>
                        a feugiat eros. Nunc ut lacinia tortors.
                    </p>
                </div><!-- end section-heading -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card-carousel mt-5">
                    <div class="card-item">
                        <a href="listing-details.html" class="card-image-wrap">
                            <div class="card-image">
                                <img src="images/img28.jpg" class="card__img" alt="">
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
                                    <img src="images/small-team1.jpg" alt="author-img">
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
                                <img src="images/img29.jpg" class="card__img" alt="">
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
                                    <img src="images/small-team2.jpg" alt="author-img">
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
                                <img src="images/img30.jpg" class="card__img" alt="">
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
                                    <img src="images/small-team3.jpg" alt="author-img">
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
                                <img src="images/img31.jpg" class="card__img" alt="">
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
                                    <img src="images/small-team4.jpg" alt="author-img">
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
                                <img src="images/img32.jpg" class="card__img" alt="">
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
                                    <img src="images/small-team5.jpg" alt="author-img">
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
                                <img src="images/img30.jpg" class="card__img" alt="">
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
                                    <img src="images/small-team6.jpg" alt="author-img">
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


<div class="section-block"></div>

<!-- ================================
       START BLOG AREA
================================= -->
<section class="blog-area padding-top-100px before-none after-none padding-bottom-80px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading text-center">
                    <h2 class="sec__title before-none pt-0">최근 게시물</h2>
                    <p class="sec__desc">
                        WeCamp의 소식을 인스타그램에서도 만나보세요!
                    </p>
                </div><!-- end section-heading -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
        <div class="row mt-5">
            <div class="col-lg-4 column-td-6">
                <div class="card-item blog-card">
                    <a href="blog-single.html" class="card-image-wrap" id="instaLink0">
                        <div class="card-image">
                            <img id="insta0" src="images/img31.jpg" alt="blog image" class="card__img">
                        </div><!-- end card-image -->
                    </a>
                    <div class="card-content pl-0 pr-0">
                        <ul class="card-meta pl-0 d-flex justify-content-between align-items-center mt-2">
                            <li id="instaTime0">25 Dec, 2018</li>
                            <li></a></li>
                        </ul>
                        <p class="card-sub mt-3" id="instaContent0">
                            Sed ut perspiciatis unde omnis iste natus error sit
                            voluptatem eaque ipsa quae ab illo inventore
                            incididunt ut labore et dolore magna
                        </p>
                    </div><!-- end blog-post-body -->
                </div><!-- end card-item -->
            </div><!-- end col-lg-4 -->
            
            <div class="col-lg-4 column-td-6">
                <div class="card-item blog-card">
                    <a href="blog-single.html" class="card-image-wrap" id="instaLink1">
                        <div class="card-image">
                            <img id="insta1" src="images/img31.jpg" alt="blog image" class="card__img">
                        </div><!-- end card-image -->
                    </a>
                    <div class="card-content pl-0 pr-0">
                        <ul class="card-meta pl-0 d-flex justify-content-between align-items-center mt-2">
                            <li id="instaTime1">25 Dec, 2018</li>
                            <li></a></li>
                        </ul>
                        <p class="card-sub mt-3" id="instaContent1">
                            Sed ut perspiciatis unde omnis iste natus error sit
                            voluptatem eaque ipsa quae ab illo inventore
                            incididunt ut labore et dolore magna
                        </p>
                    </div><!-- end blog-post-body -->
                </div><!-- end card-item -->
            </div><!-- end col-lg-4 -->
            
            <div class="col-lg-4 column-td-6">
                <div class="card-item blog-card">
                    <a href="blog-single.html" class="card-image-wrap" id="instaLink2">
                        <div class="card-image">
                            <img id="insta2" src="images/img31.jpg" alt="blog image" class="card__img">
                        </div><!-- end card-image -->
                    </a>
                    <div class="card-content pl-0 pr-0">
                        <ul class="card-meta pl-0 d-flex justify-content-between align-items-center mt-2">
                            <li id="instaTime2">25 Dec, 2018</li>
                            <li></a></li>
                        </ul>
                        <p class="card-sub mt-3" id="instaContent2">
                            Sed ut perspiciatis unde omnis iste natus error sit
                            voluptatem eaque ipsa quae ab illo inventore
                            incididunt ut labore et dolore magna
                        </p>

                    </div><!-- end blog-post-body -->
                </div><!-- end card-item -->
            </div><!-- end col-lg-4 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end blog-area -->
<!-- ================================
       START BLOG AREA
================================= -->

<div class="section-block"></div>

	<div class="playon-instagarm"></div>

<div class="section-block"></div>

<!-- ================================
       START CLIENTLOGO AREA
================================= -->
<section class="clientlogo-area padding-top-80px padding-bottom-80px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="client-logo text-center">
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                    <div class="client-logo-item">
                        <img src="images/client-logo.png" alt="brand image">
                    </div><!-- end client-logo-item -->
                </div><!-- end client-logo -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end clientlogo-area -->
<!-- ================================
       START CLIENTLOGO AREA
================================= -->
<!-- ================================
       START INSTAGRAM AREA
================================= -->
<script type="text/javascript" language="javascript" 
	 src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script type="text/javascript">

		   $(document).ready(function(){ 
			   console.log("hello world");
			   
			   $.ajax({
				   url: "insta/getGrid.json", 
				   type: "GET",
				   contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				   success: function(responseData){
					  //var jsObj = JSON.parse(responseData); //jQuery 버젼을 올려서 필요 없음
					  //encodeURIComponent(responseData);
					  //alert(responseData);
                      if(!responseData){
						  return false;
					  }else{
						  for(i=0;i<3;i++){
							 $("#insta"+i).attr('src', responseData.data[i].media_url);
							 $("#instaLink"+i).attr('href', responseData.data[i].permalink);
							 var time = responseData.data[i].timestamp.split("T");
							 $("#instaTime"+i).html(time[0]);
							 $("#instaContent"+i).html(responseData.data[i].caption);

								//alert("good");
						  }
					  }
				   },
				 error: function(request, status, error){
					 alert(request);
					 alert(status);
					 alert(error);
				 }
			   });
			   
			});
	</script>
	
	<script src="/js/search.js"></script>
	
	
<script type="text/javascript">
		var naver_id_login = new naver_id_login("YtUqxw72XK5MQyMaFC_R", "https://localhost:8443/"); // 역시 마찬가지로 'localhost'가 포함된 CallBack URL
		
		// 접근 토큰 값 출력
		alert(naver_id_login.oauthParams.access_token);
		
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			alert(naver_id_login.getProfileData('email'));
			alert(naver_id_login.getProfileData('nickname'));
			alert(naver_id_login.getProfileData('age'));
		}
</script>