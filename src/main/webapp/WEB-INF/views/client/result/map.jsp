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
 	  padding:30; 
	  display: grid;
	  grid-template-columns: 1fr 1fr;
	  grid-template-rows: 1fr;
	  gap: 1px 1px;
	  grid-template-areas: "list map";
	  grid-area: body;
	}
	
	.list { grid-area: list; 
			display: grid;
			display: grid;
			  grid-template-columns: 1fr;
			  grid-template-rows: 1.8fr 0.2fr;
			  gap: 1px 1px;
			  grid-template-areas: "list-list-camp" "list-list-button";
			}
	.list-list-camp { grid-area: list-list-camp; }
	
	.list-list-button { grid-area: list-list-button; }			
			
	
	.map { 
			width: 100%; height: 100%;
			grid-area: map; 
			background-color: blue;
		
			
			}
	#kakaoMap {
	
		width: auto; height: 100vh;
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
			
	/* .list-grid-container {
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
	background-color: aliceblue;} */
	
	.list-grid-container {
	  width: 792; height: 228;
	  display: grid;
	  grid-template-columns: 0.8fr 1.2fr;
	  grid-template-rows: 1fr;
	  gap: 10px 1px;
	 grid-template-areas: "list-campPic list-campInform";
	 margin-bottom : 30;
	 cursor: pointer;
	}
	
	.list-campPic { 
	  width : 375;
	  height: 250;
	  float: center;
	  grid-area: list-campPic; 
	   border-radius: 10px;
	   overflow: hidden;
	}
	
	.list-campPic-Wrap{
		transform:scale(1.1); /*디폴트*/
	   -webkit-transform:scale(1.1);     /*  크롬 */
	  -moz-transform:scale(1.1);       /* FireFox */
      -o-transform:scale(1.1);           /* Opera */ 
      	
      	-webkit-transition:.3s;
	    -moz-transition:.3s;
	    -ms-transition:.3s;
	    -o-transition:.3s;
	    transition:.3s;
	}
	
	.list-campPic-Wrap:hover {
	  transform: scale(1.2);
	  -webkit-transform: scale(1.2);
	  -moz-transform: scale(1.2);
	  -ms-transform: scale(1.2);
	  -o-transform: scale(1.2);
	}
	
	.campPic{
	 max-width: 100%; height: auto;
	   border-radius: 10px;
	  
	}
	
	.list-campInform {
	  margin-left: 30;
	  width: 476;
	  height: 250;
	  display: grid;
	  grid-template-columns: 1fr 1fr;
	  grid-template-rows: 0.7fr 1fr 0.5fr 1.8fr 1fr;
	  gap: 1px 1px;
	 grid-template-areas: "list-campType list-campJJim" "list-campName list-campName" "list-decoBar list-decoBar" "list-campMoreInform list-campMoreInform" "list-campRating list-campCharge";
	  grid-area: list-campInform;
	}
	
	.list-campType { grid-area: list-campType; text-align: left;  margin-top: 10; font-size: 15px;}
	
	.list-campJJim { grid-area: list-campJJim; text-align: right; padding:10 }
	
	.list-campName { grid-area: list-campName; text-align: left; font-size: 20px; font-weight:700; font-color:black;}
	
	.list-decoBar { grid-area: list-decoBar; text-align: left;}
	
	.list-campMoreInform { grid-area: list-campMoreInform; }
	
	.list-campRating { grid-area: list-campRating; text-align: left; font-weight:700;}
	
	.list-campCharge { grid-area: list-campCharge; text-align: right; font-weight:700; font-weight:700; font-color:#333F57 !important; }

	.list-under-decoBar { font-color:#E8E8E8; font-weight: 100; opacity:0.2}


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


.heart{

border: 0;
outline: 0;
color:gray;
}

.heart:focus { outline:none; }

.heart:hover{
	color:#ff6b6b;
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
	    	<div class="list-list-camp">
		    	<div class="list-grid-container" onclick="location.href='http://google.com'">
				  <div class="list-campPic">
				  	<div class="list-campPic-Wrap">
				  		<img class="campPic" src="http://www.gyeongju.go.kr/upload/content/thumb/20200428/24F347BD8AE241D9B2B3FCA410B17329.jpg">
				  	</div>
				  </div>
				  <div class="list-campInform">
				    <div class="list-campType">
				   		  <span class="location">경기도 광주시</span> 의 <span class="type"> 오지캠핑장</span>
				    </div>
				    <div class="list-campJJim">
				     <button class="heart">
				    	<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	 					 <path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
						</svg>
					</button>
				    </div>
				    <div class="list-campName">
				    	<h3 class="card-title">구글 캠핑장 
	                      <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="안전 캠핑 인증"></i>
	                   </h3>	
				    </div>
				    <div class="list-decoBar">
				    ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯ 
				    </div>
				    <div class="list-campMoreInform">
				    	 경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
				    </div>
				    <div class="list-campRating">
				 		   <div class="rating-rating">
	                             <span class="la la-star"></span>
	                             <span class="la la-star"></span>
	                             <span class="la la-star"></span>
	                             <span class="la la-star-half-full"></span>
	                             <span class="la la-star last-star"></span>
	                             <span class="rating-count">4.5</span>
	                        	</div>
				    </div>
				    <div class="list-campCharge">
				    	<span>₩</span><span class="charge">450000</span><span style="font-weight: 300 !important;">/1박</span>
				    </div>
				  </div>
				</div>
				
				<div class="list-under-decoBar">
				    ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
				</div>
				
		    	<div class="list-grid-container" onclick="location.href='http://google.com'">
				  <div class="list-campPic">
				  	<div class="list-campPic-Wrap">
				  		<img class="campPic" src="http://www.gyeongju.go.kr/upload/content/thumb/20200428/24F347BD8AE241D9B2B3FCA410B17329.jpg">
				  	</div>
				  </div>
				  <div class="list-campInform">
				    <div class="list-campType">
				   		 <span class="location">경기도 광주시</span> 의 <span class="type"> 오지캠핑장</span>
				    </div>
				    <div class="list-campJJim">
				     <button class="heart">
				    	<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	 					 <path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
						</svg>
					</button>
				    </div>
				    <div class="list-campName">
				    	<h3 class="card-title">구글 캠핑장 
	                      <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="안전 캠핑 인증"></i>
	                   </h3>	
				    </div>
				    <div class="list-decoBar">
				    ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯ 
				    </div>
				    <div class="list-campMoreInform">
				    	 경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
				    </div>
				    <div class="list-campRating">
				 		   <div class="rating-rating">
	                             <span class="la la-star"></span>
	                             <span class="la la-star"></span>
	                             <span class="la la-star"></span>
	                             <span class="la la-star-half-full"></span>
	                             <span class="la la-star last-star"></span>
	                             <span class="rating-count">4.5</span>
	                        	</div>
				    </div>
				    <div class="list-campCharge">
				    	<span>₩</span><span class="charge">450000</span><span style="font-weight: 300 !important;">/1박</span>
				    </div>
				  </div>
				</div>
				
				<div class="list-under-decoBar">
				    ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
				</div>
		    	<div class="list-grid-container" onclick="location.href='http://google.com'">
				  <div class="list-campPic">
				  	<div class="list-campPic-Wrap">
				  		<img class="campPic" src="http://www.gyeongju.go.kr/upload/content/thumb/20200428/24F347BD8AE241D9B2B3FCA410B17329.jpg">
				  	</div>
				  </div>
				  <div class="list-campInform">
				    <div class="list-campType">
				   		 <span class="location">경기도 광주시</span> 의 <span class="type"> 오지캠핑장</span>
				    </div>
				    <div class="list-campJJim">
				     <button class="heart">
				    	<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	 					 <path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
						</svg>
					</button>
				    </div>
				    <div class="list-campName">
				    	<h3 class="card-title">구글 캠핑장 
	                      <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="안전 캠핑 인증"></i>
	                   </h3>	
				    </div>
				    <div class="list-decoBar">
				    ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯ 
				    </div>
				    <div class="list-campMoreInform">
				    	 경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
				    </div>
				    <div class="list-campRating">
				 		   <div class="rating-rating">
	                             <span class="la la-star"></span>
	                             <span class="la la-star"></span>
	                             <span class="la la-star"></span>
	                             <span class="la la-star-half-full"></span>
	                             <span class="la la-star last-star"></span>
	                             <span class="rating-count">4.5</span>
	                        	</div>
				    </div>
				    <div class="list-campCharge">
				    	<span>₩</span><span class="charge">450000</span><span style="font-weight: 300 !important;">/1박</span>
				    </div>
				  </div>
				</div>
				
				<div class="list-under-decoBar">
				    ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
				</div>
		    	<div class="list-grid-container" onclick="location.href='http://google.com'">
				  <div class="list-campPic">
				  	<div class="list-campPic-Wrap">
				  		<img class="campPic" src="http://www.gyeongju.go.kr/upload/content/thumb/20200428/24F347BD8AE241D9B2B3FCA410B17329.jpg">
				  	</div>
				  </div>
				  <div class="list-campInform">
				    <div class="list-campType">
				   		 <span class="location">경기도 광주시</span> 의 <span class="type"> 오지캠핑장</span>
				    </div>
				    <div class="list-campJJim">
				     <button class="heart">
				    	<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	 					 <path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
						</svg>
					</button>
				    </div>
				    <div class="list-campName">
				    	<h3 class="card-title">구글 캠핑장 
	                      <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="안전 캠핑 인증"></i>
	                   </h3>	
				    </div>
				    <div class="list-decoBar">
				    ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯ 
				    </div>
				    <div class="list-campMoreInform">
				    	 경기도 광주시 백마산 자락에 위치한 공기 좋은 캠핑장입니다.
				    </div>
				    <div class="list-campRating">
				 		   <div class="rating-rating">
	                             <span class="la la-star"></span>
	                             <span class="la la-star"></span>
	                             <span class="la la-star"></span>
	                             <span class="la la-star-half-full"></span>
	                             <span class="la la-star last-star"></span>
	                             <span class="rating-count">4.5</span>
	                        	</div>
				    </div>
				    <div class="list-campCharge">
				    	<span>₩</span><span class="charge">450000</span><span style="font-weight: 300 !important;">/1박</span>
				    </div>
				  </div>
				</div>
				
				<div class="list-under-decoBar">
				    ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
				</div>
			</div>					
			
			<div class="list-list-button">
				<div class="button-shared mt-4 text-center">
                    <button id="loadMore" type="button" class="theme-btn border-0"><span class="la la-refresh"></span> load more</button>
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
	        level: 8 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	
	var listData = [
	    {	
	    	title: "구글캠핑",
	        groupAddress: '경기도 광주시 초월읍 경충대로 1127번길 55', 
	    },
	    {	
	   		title: "야후캠핑",
	        groupAddress: '경기도 광주시 송정동 11번길', 
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
		            content: listData[0].title
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

<!--찜 모달띄우기 -->

<div class="modal fade" id="testModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">test  </h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>
				<div class="modal-body">해당 캠핑장을 찜하겠습니까?</div>
				<div class="modal-footer">
					<a class="btn" id="modalY" href="#">예</a>
					<button class="btn" type="button" data-dismiss="modal">아니요</button>
				</div>
			</div>
		</div>
	</div>

<script>
$(".heart").click(function(e){
	e.preventDefault();
	$('#testModal').modal("show");
	
});

</script>  

<!--컴마 표시 -->
<script>
// 숫자 타입에서 쓸 수 있도록 format() 함수 추가
	Number.prototype.format = function(){
	    if(this==0) return 0;
	    var reg = /(^[+-]?\d+)(\d{3})/;
	    var n = (this + '');
	    while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');
	    return n;
	};
	// 문자열 타입에서 쓸 수 있도록 format() 함수 추가
	String.prototype.format = function(){
	    var num = parseFloat(this);
	    if( isNaN(num) ) return "0";
	    return num.format();
	};
	
	$(".charge").text(function() {//1000단위 컴마처리
	    $(this).text(
	        $(this).text().format()
	    );
	});
</script>
 
 <script>
 
 $("#loadMore").click(function(){

	 $.ajax({
	      url:"./search02",
	      type:"GET",
	      dataType: "HTML",
	      contentType: 'application/x-www-form-urlencoded; charset=utf-8',
	      success: function(result) {
	          if (result) {
	        	 
	        	  $(".list-list-camp").append(result);
	          } else {
	              alert("잠시 후에 시도해주세요.");
	          }
	      },
	      error: function(request, status, error) {
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	      }
	  });

	 
 })
 
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
