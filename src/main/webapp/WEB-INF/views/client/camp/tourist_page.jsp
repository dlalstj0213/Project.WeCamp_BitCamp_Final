<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach items="${tourMap}" var="tour">
<div class="card-item">
		<div class="card-image">
	<a href="listing-details.html" class="card-image-wrap">
			<img src="${tour.img}" class="card__img" alt="">
	</a>
		</div>
	<div class="card-content-wrap">
		<div class="card-content">
			<h4 class="card-title">
				${tour.title} <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="Claimed"></i>
			</h4>
			<p class="card-sub">${tour.addr}</p>
			<ul class="info-list padding-top-20px">
				<li><span class="la la-phone"></span> ${tour.tel}</li>
			</ul>
		</div>
	</div>
	<!-- end card-content-wrap -->
</div>
</c:forEach>
<!-- end card-item -->

<%-- <section class="card-area text-center padding-top-100px padding-bottom-100px">
    <div class="container">
        <div class="row">
        	<div class="col-lg-12">
                <div class="card-carousel mt-5">
                <c:forEach items="${tourMap}" var="tour">
                    <div class="card-item">
                            <div class="card-image">
                                <img src="${tour.img}" class="card__img" alt="">
                                <span class="badge">운영중</span>
                            </div>
                        </a>
                        <div class="card-content-wrap">
                            <div class="card-content">
                                <a href="camp/camp_detail.wcc?camp_idx=${unit.camp_idx}">
                                    <h5 class="card-meta"><span class="la la-home"></span> 캠핑장</h5>
                                    <h4 class="card-title">
                                       ${tour.title}  <i class="fa fa-check-circle" data-toggle="tooltip" data-placement="top" title="" data-original-title="Claimed"></i>
                                    </h4>
                                    <p class="card-sub">${tour.addr} </p>
                                </a>
                                
                                <ul class="info-list padding-top-20px">
                                    <li><span class="la la-phone"></span>${tour.tel} </li>
                                </ul>
                            </div>
                        </div><!-- end card-content-wrap -->
                    </div><!-- end card-item -->
               		</c:forEach>       
                </div><!-- end card-carousel -->
            </div><!-- end col-lg-12 -->    
        </div><!-- end row -->
            </div><!-- end container -->
</section><!-- end card-area --> --%>