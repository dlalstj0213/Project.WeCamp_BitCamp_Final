<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>위캠프 :: 최고의 캠핑 사이트</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="author" content="TechyDevs(remade by JHW, LMS, LSB, HDS)">
    <meta name="description" content="WeCamp -- We provides camping reservation. and We also offer camping information and community">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge, chrome=1">

    <!-- Favicon -->
    <link rel="icon" href="/images/favicon.png" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700&display=swap" rel="stylesheet">

    <!-- Template CSS Files -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/font-awesome.css">
    <link rel="stylesheet" href="/css/line-awesome.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/animated-headline.css">
    <link rel="stylesheet" href="/css/daterangepicker.css">
    <link rel="stylesheet" href="/css/jquery-ui.css">
    <link rel="stylesheet" href="/css/jquery.filer.css">
    <link rel="stylesheet" href="css/jquery.filer-dragdropbox-theme.css">
    <link rel="stylesheet" href="/css/select2.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="/js/modernizr.js"></script> <!-- Modernizr -->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script><!--jquery-->

<style>

	html,body {height:100%;
				width: 100%; 
				margin:0; 
				padding:0;
				}

 	
	
	.grid-container {
		height:100%;
		width: 100%;
	  display: grid;
	 grid-template-columns: 1fr 1fr;
 	 grid-template-rows: 0.5fr 2fr 0.5fr;
  	gap: 1px 1px;
  	grid-template-areas: "header header" "body body" "footer footer";
	}
	
	.header {
		padding:5;
		margin:5; 
	  display: grid;
	  grid-template-columns: 0.9fr 1.5fr 0.6fr;
	  grid-template-rows: 1fr;
	  gap: 1px 1px;
	  grid-template-areas: "logo searchbar mypage";
	  grid-area: header;
	  background-color: aliceblue;
	}
	
	.logo { grid-area: logo;
			text-align: center; 
	}
	
	.mypage { grid-area: mypage; 
				text-align: right; 
			}
	
	.searchbar { 
	width: 100%;
	height: 100%;
	grid-area: searchbar; 
	text-align: center; 
	}	
	
	.body {
 
	  display: grid;
	  grid-template-columns: 1fr 1fr;
	  grid-template-rows: 1fr;
	  gap: 1px 1px;
	  grid-template-areas: "list map";
	  grid-area: body;
	}
	
	.list { grid-area: list; 
		
			}
	
	.map { grid-area: map; 
			background-color: blue;
		
			
			}
	#kakaoMap {
	
		height:35%;
		width: 100%;
		position: sticky; 
		top: 0; 
		position: -webkit-sticky;
	}		
	
	.footer {
	  padding:30; 
	  display: grid;
	  grid-template-columns: 1fr;
	  grid-template-rows: 1fr;
	  gap: 1px 1px;
	  grid-template-areas: "footer2";
	  grid-area: footer;
	  background-color: aliceblue;

	}

	
	.footer2 { grid-area: footer2; 
			}
			
	.list-grid-container {
	  display: grid;
	  grid-template-columns: 1fr;
	  grid-template-rows: 1.3fr 1.4fr;
	  gap: 1px 1px;
	 grid-template-areas: "list-card-image" "list-card-content"  
	}
	
	.list-card-image {
	 grid-area: list-card-image; 
		height:100%;
		width: 100%;
		text-align: center;
	  
	 }
	
	.list-card-content {
		text-align : center;
		color : black;
	  display: grid;
	  grid-template-columns: 1fr;
	  grid-template-rows: 0.8fr 0.6fr 1.6fr;
	  gap: 1px 1px;
	 grid-template-areas: "list-site-name" "list-site-tag" "list-site-inform";
	  grid-area: list-card-content;
	}
	
	.list-site-name { grid-area: list-site-name; 
	background-color: skyblue;
	}
	
	.list-site-tag { grid-area: list-site-tag; 
	background-color: pink;
	}
	
	.list-site-inform { grid-area: list-site-inform; 
	background-color: aliceblue;}
	

*, *::before, *::after { box-sizing: border-box; }
	
	.product-search {
	
	width: 80%;
	height: 50%;
  display: flex;
  align-items: center;
  background: white;
  border-radius: 5px;
  margin: 0 auto;
  box-shadow: rgba(0,0,0,.172549) 0 6px 12px 0;
  cursor: pointer;
}

.search-element {
  display: flex;
  flex-grow: 2;
  flex-direction: column;
  border-right: 1px solid rgba(10,10,10,.1);
  padding: 1em;
}

.search-label {
  font-weight: 700;
}

.search-input {
  border: none;
  appearance: none;
  outline: none;
  width: 100%;
 
}

.search-input:focus {
  box-shadow: 0px 2px 0px 0px tomato;
}

.search-button {
  display: inline-block;
  flex-grow: 1;
  height: 100%;
  
  padding: 0 2em;
  text-align: center;
  font-size: 1.2em;
  font-weight: 100;
  border: 0;
  border-top-left-radius: 0px;
  border-bottom-left-radius: 0px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
  color: white !important;
  background-color: #ff6b6b;
  transition: background-color 0.8s ease;
}

.search-button:hover {
  background-color: HSLA(345, 100%, 60%, 1.00);
}


</style>


</head>

<body>
<section id="body">
	<div class="grid-container">
	
	  <div class="header">
    	<div class="logo"> <a href="index.html"><img src="/images/logo.png" alt="logo"></a></div>
		<div class="searchbar">
			
			<form action="" method="get">
			  <div class="product-search">
			      <div class="search-element">
			        <label class="search-label">위치</label>
			        <input class="search-input" type="text" autocomplete="on" placeholder="강릉시" >
			      </div>
			      <div class="search-element">
			        <label class="search-label">일정</label>
			        <input class="search-input" type="date" class="" autocomplete="on">
			      </div>
			      <a type="submit" class="search-button">Search</a>
			  </div>
			</form>
		
		</div>
		<div class="mypage">
           	 <div class="logo-right-content" style="float:right !important">
                <div class="side-user-menu-open" style="background-color:#ff6b6b !important ; width:50px !important; height:45.71px !important;">
                    <span class="la la-user" style="color:white !important ;  padding:13px !important;width:50px !important; height:20px !important;"></span>
                </div><!-- end side-user-menu-open -->
          </div><!-- end logo-right-content -->
		</div>

	</div>
	
		<div class="side-user-panel">
        <div class="humburger-menu">
            <div class="humburger-menu-lines side-menu-close"></div><!-- end humburger-menu-lines -->
        </div><!-- end humburger-menu -->
        <div class="side-menu-wrap side-user-menu-wrap">
            <div class="side-user-img">
                
                <h4 class="su__name">이수빈</h4>
                <span class="su__meta">가입 날짜 : 2020-08-03</span>

            </div>
            <ul class="side-menu-ul">
                <li><a href="dashboard.html"><span class="la la-user user-icon"></span> 회원정보</a></li>
                <li><a href="dashboard.html"><span class="la la-list-alt user-icon"></span> 예약내역</a></li>
                <li><a href="dashboard.html"><span class="la la-bookmark-o user-icon"></span> 찜 목록</a></li>
                <li><a href="dashboard.html"><span class="la la-plus-circle user-icon"></span> 업체등록</a></li>
                <li><div class="dropdown-divider"></div></li>
                <li><a href="#"><span class="la la-question user-icon"></span> 사이트 활용법</a></li>
                <li><a href="#"><span class="la la-gear user-icon"></span> 개인정보 수정</a></li>
                <li><a href="#"><span class="la la-power-off user-icon"></span> 로그아웃</a></li>
            </ul>
            <div class="side-user-search contact-form-action">
                <form method="post">
                    <div class="form-group mb-0">
                       
                    </div>
                    
                </form>
            </div><!-- end sidebar-widget -->
        </div><!-- end side-menu-wrap -->
    </div><!-- end side-user-panel -->
	

	
	  <div class="body">
	    <div class="list">
	    
	    	<div class="list-grid-container">
			  <div class="list-card-image">
				<img src="https://www.google.com/logos/doodles/2020/wear-a-mask-save-lives-copy-6753651837108810-law.gif">
			  </div>
			  <div class="list-card-content">
			    
			    <div class="list-site-name">
			     구글 캠핑장	
			    </div>
			    
			    <div class="list-site-tag">
			     경기도 광주시 초월읍 경충대로 1127번길 55
			    </div>
			    <div class="list-site-inform">
			    	경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
			    </div>	
			  </div>
			</div>
			
		<div class="list-grid-container">
			  <div class="list-card-image">
				<img src="https://www.gstatic.com/youtube/img/promos/growth/ytr_lp2_logo_premium_desktop_552x71.png">
			  </div>
			  <div class="list-card-content">
			    
			    <div class="list-site-name">
			     유튜브 캠핑장	
			    </div>
			    
			    <div class="list-site-tag">
			     경기도 광주시 초월읍 경충대로 1127번길 55
			    </div>
			    <div class="list-site-inform">
			    	경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
			    </div>	
			  </div>
			</div>

		<div class="list-grid-container">
			  <div class="list-card-image">
				<img src="https://t1.daumcdn.net/daumtop_chanel/op/20200723055344399.png">
			  </div>
			  <div class="list-card-content">
			    
			    <div class="list-site-name">
			     다음 캠핑장	
			    </div>
			    
			    <div class="list-site-tag">
			     경기도 광주시 초월읍 경충대로 1127번길 55
			    </div>
			    <div class="list-site-inform">
			    	경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
			    </div>	
			  </div>
			</div>
					
		<div class="list-grid-container">
			  <div class="list-card-image">
				<img src="https://s.yimg.com/rz/p/yahoo_frontpage_en-US_s_f_p_205x58_frontpage_2x.png">
			  </div>
			  <div class="list-card-content">
			    
			    <div class="list-site-name">
			     야후 캠핑장	
			    </div>
			    
			    <div class="list-site-tag">
			     경기도 광주시 초월읍 경충대로 1127번길 55
			    </div>
			    <div class="list-site-inform">
			    	경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
			    </div>	
			  </div>
			</div>
		<div class="list-grid-container">
			  <div class="list-card-image">
				<img src="https://s.yimg.com/rz/p/yahoo_frontpage_en-US_s_f_p_205x58_frontpage_2x.png">
			  </div>
			  <div class="list-card-content">
			    
			    <div class="list-site-name">
			     야후 캠핑장	
			    </div>
			    
			    <div class="list-site-tag">
			     경기도 광주시 초월읍 경충대로 1127번길 55
			    </div>
			    <div class="list-site-inform">
			    	경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
			    </div>	
			  </div>
			</div>
		<div class="list-grid-container">
			  <div class="list-card-image">
				<img src="https://s.yimg.com/rz/p/yahoo_frontpage_en-US_s_f_p_205x58_frontpage_2x.png">
			  </div>
			  <div class="list-card-content">
			    
			    <div class="list-site-name">
			     야후 캠핑장	
			    </div>
			    
			    <div class="list-site-tag">
			     경기도 광주시 초월읍 경충대로 1127번길 55
			    </div>
			    <div class="list-site-inform">
			    	경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
			    </div>	
			  </div>
			</div>
		<div class="list-grid-container">
			  <div class="list-card-image">
				<img src="https://s.yimg.com/rz/p/yahoo_frontpage_en-US_s_f_p_205x58_frontpage_2x.png">
			  </div>
			  <div class="list-card-content">
			    
			    <div class="list-site-name">
			     야후 캠핑장	
			    </div>
			    
			    <div class="list-site-tag">
			     경기도 광주시 초월읍 경충대로 1127번길 55
			    </div>
			    <div class="list-site-inform">
			    	경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
			    </div>	
			  </div>
			</div>
		<div class="list-grid-container">
			  <div class="list-card-image">
				<img src="https://s.yimg.com/rz/p/yahoo_frontpage_en-US_s_f_p_205x58_frontpage_2x.png">
			  </div>
			  <div class="list-card-content">
			    
			    <div class="list-site-name">
			     야후 캠핑장	
			    </div>
			    
			    <div class="list-site-tag">
			     경기도 광주시 초월읍 경충대로 1127번길 55
			    </div>
			    <div class="list-site-inform">
			    	경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
			    </div>	
			  </div>
			</div>
		<div class="list-grid-container">
			  <div class="list-card-image">
				<img src="https://s.yimg.com/rz/p/yahoo_frontpage_en-US_s_f_p_205x58_frontpage_2x.png">
			  </div>
			  <div class="list-card-content">
			    
			    <div class="list-site-name">
			     야후 캠핑장	
			    </div>
			    
			    <div class="list-site-tag">
			     경기도 광주시 초월읍 경충대로 1127번길 55
			    </div>
			    <div class="list-site-inform">
			    	경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
			    </div>	
			  </div>
			</div>
			
			<div class="list-grid-container">
				<div class="button-shared mt-4 text-center">
                    <button type="button" class="theme-btn border-0"><span class="la la-refresh"></span> load more</button>
                </div><!-- end button-shared -->
			</div>					
												
			
	    </div>
	    <div class="map">
	    	<div id="kakaoMap">
	    	
	    	</div>	    	
	    </div>
</div>	    

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=76f485124ece8a8f6ef804e2e561062d&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('kakaoMap'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	
	var listData = [
	    {	
	    	title: "구글캠핑",
	        groupAddress: '제주특별자치도 제주시 첨단로 242', 
	    },
	    {	
	   		title: "야후캠핑",
	        groupAddress: '제주특별자치도 제주시 첨단로 241', 
	    }
	];
	
	for (var i=0; i < listData.length ; i++) {
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(listData[i].groupAddress, function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === daum.maps.services.Status.OK) {

		        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new daum.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new daum.maps.InfoWindow({
		            content: result[0].y + "," + result[0].x
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		})
		
	}
	
	
/* 	var positions = new Array();
	
	positions[0] = {
		title : "야후",
		address : "경기도 광주시 태봉로 77"
	};
	
	positions[1] = {
		title : "구글",
		address : "경기도 광주시 초월읍 경충대로 1127번길 55"
	};
	alert(positions[1].title);
	alert(positions[1].address);
	var coords = new Array();
	
	var callback = function(result, status){		
		 if (status === kakao.maps.services.Status.OK) {
			 coords.push(new kakao.maps.LatLng(result[0].y, result[0].x));
		 }
	};

		// 주소로 좌표를 검색합니다
	
	geocoder.addressSearch(positions[0].address, callback);
	geocoder.addressSearch(positions[1].address, callback);

	var i = 0;
	positions.forEach(function(){
		alert(i);
		alert(positions[i].address);
		alert(coords[i].LatLng);
		 var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: coords[i].LatLng, // 마커를 표시할 위치
		        title : positions[i].title //마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		 });
		i++;
	}) */

	


	
	

</script>	       

	  <div class="footer">
	    <div class="footer2">
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
                        <a href="index.html" class="foot-logo"><img src="/images/logo.png" alt="logo"></a>
                        <p class="footer__desc">
                            WeCamp -- We provides camping reservation. and We also offer camping information and community
                        </p>
                        <ul class="social-profile">
                            <li>
                                <a href="https://www.instagram.com/wecamp_kr/">
                                    <i class="fa fa-facebook" style="padding:10px !important"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/wecamp_kr/">
                                    <i class="fa fa-twitter" style="padding:10px !important"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/wecamp_kr/">
                                    <i class="fa fa-instagram" style="padding:10px !important"></i>
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
                        <li><a href="about.html">사이트 활용법</a></li>
                        <li><a href="sign-up.html">회원가입</a></li>
                        <li><a href="login.html">로그인</a></li>
                        <li><a href="add-listing.html"></a></li>
                        <li><a href="contact.html">신뢰와 안전</a></li>
                        <li><a href="pricing.html">뉴스룸</a></li>
                    </ul>
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
            <div class="col-lg-3 column-td-6">
                <div class="footer-item">
                    <h4 class="footer__title">Categories</h4>
                    <ul class="list-items">
                        <li><a href="#">커뮤니티</a></li>
                        <li><a href="#">친구 초대하기</a></li>
                        <li><a href="#">캠핑장 호스팅</a></li>
                        <li><a href="#">채용 정보</a></li>
                        <li><a href="#">업체 문의</a></li>
                    </ul>
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
            <div class="col-lg-3 column-td-6">
                <div class="footer-item">
                    <h4 class="footer__title">Contact with Us</h4>
                    <ul class="info-list contact-links">
                        <li><span class="la la-home"></span> 서울 마포구 백범로 23 3층</li>
                        <li><span class="la la-headphones"></span> <a href="#">+ 81 02 707 1480</a></li>
                        <li><span class="la la-envelope-o"></span> <a href="#">dirto@gmail.com</a></li>
                    </ul>
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
        </div><!-- end row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="copy-right margin-top-50px padding-top-60px">
                    <p class="copy__desc">
                        &copy; Copyright WeCamp 2020. Made with
                        <span class="la la-heart-o"></span> by <a href="https://www.instagram.com/wecamp_kr/">SB, HW, DS, MS </a>
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
    <i class="fa fa-angle-up" title="Go top" style="padding:5px !important"></i>
</div>
<!-- end back-to-top -->

<!-- Template JS Files -->
<script src="/js/jquery.min.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/isotope-3.0.6.min.js"></script>
<script src="/js/animated-headline.js"></script>
<script src="/js/select2.min.js"></script>
<script src="/js/moment.min.js"></script>
<script src="/js/daterangepicker.js"></script>
<script src="/js/waypoints.min.js"></script>
<script src="/js/jquery.counterup.min.js"></script>
<script src="/js/jquery.show-more.js"></script>
<script src="/js/jquery-rating.js"></script>
<script src="/js/jquery.filer.min.js"></script>
<script src="/js/smooth-scrolling.js"></script>
<script src="/js/main.js"></script>
			
	    </div>
	  </div>
</div>
</section>	
