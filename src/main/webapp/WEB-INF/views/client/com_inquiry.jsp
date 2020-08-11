<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
<section class="breadcrumb-area">
    <div class="breadcrumb-wrap">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-content">
                        <h2 class="breadcrumb__title">add listing</h2>
                        <ul class="breadcrumb__list">
                            <li class="active__list-item"><a href="index.html">home</a></li>
                            <li class="active__list-item">listings</li>
                            <li>add listing</li>
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
    START ADD-LISTING AREA
================================= -->
<section class="add-listing-area padding-top-40px padding-bottom-100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 mx-auto">
                <div class="billing-form-item">
                    <div class="billing-title-wrap">
                        <h3 class="widget-title pb-0">업체 문의 작성</h3>
                        <div class="title-shape margin-top-10px"></div>
                    </div><!-- billing-title-wrap -->
                    <div class="billing-content">
                        <div class="contact-form-action">
                                <div class="row">
                                    <div class="col-lg-12">
                                    	<div id="check-input">
										</div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text d-flex align-items-center ">이메일
                                                <i class="la la-exclamation tip ml-1" onclick="email_required();"></i>
                                            </label>
                                            <div class="form-group">
                                                <span class="la la-pencil-square-o form-icon"></span>
                                                <input class="form-control" type="text" id="text1" name="name" placeholder="Write your E-mail Address">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-6">
                                        <div class="input-box">
                                            <label class="label-text d-flex align-items-center ">사업자번호
                                                <i class="la la-exclamation tip ml-1" onclick="business_num_required();"></i>
                                            </label>
                                            <div class="form-group">
                                                <span class="la la-pencil-square-o form-icon"></span>
                                                <input class="form-control" type="text" id="text2" name="name" placeholder="Write your Business-Number">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">제목</label>
                                            <div class="form-group">
                                                <span class="la la-pencil-square-o form-icon"></span>
                                                <input class="form-control" type="text" id="text3" name="name" placeholder="Write Title">
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                    <div class="col-lg-12">
                                        <div class="input-box">
                                            <label class="label-text">내용
                                             	<i class="la la-exclamation tip ml-1" onclick="content_required();"></i>
                                            </label>
                                            <div class="form-group">
                                                <span class="la la-pencil form-icon"></span>
                                                <textarea class="message-control form-control" id="text4" name="message" placeholder="Write Specific Contents"></textarea>
                                            </div>
                                        </div>
                                    </div><!-- end col-lg-12 -->
                                </div><!-- end row -->
                        </div><!-- end contact-form-action -->
                    </div><!-- end billing-content -->
                </div><!-- end billing-form-item -->
                
               <form action="test.do" method="post" id="submit-inquiry">
                    <input type='hidden' name='email' id='email'>
                    <input type='hidden' name='owner_num' id='owner_num'>
                    <input type='hidden' name='title' id='title'>
                    <input type='hidden' name='content' id='content'>
               </form>
               <div class="d-flex justify-content-between">
			    <div class="invisible">
				 <button type="button" class="btn btn-info">Panel</button>
			    </div>
			    <div class="show">
                 <div class="btn-box mt-4">
                  <button type="button" class="theme-btn border-0" onclick="setInputs();">submit</button>
                 </div><!-- end btn-box -->
			    </div>
			    <div class="invisible">
				 <button type="button" class="btn btn-info">Panel</button>
			    </div>
		       </div>
                
            </div><!-- end col-lg-9 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end add-listing-area -->
<!-- ================================
    END ADD-LISTING AREA
================================= -->
<!-- ================================
	JAVASCRIPT
================================= -->
<script src="/js/com_inquiry.js"></script>
</body>
</html>