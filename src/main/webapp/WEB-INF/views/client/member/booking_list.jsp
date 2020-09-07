<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<style>
     .star_grade a{
        text-decoration: none;
        color: gray;
    }
    .star_grade a.on{
        color: #ffc400;
    }
</style>
<script>
		var prev = 0;
        $('.star_grade a').click(function(){
            $('a').removeClass('on');
        	$(this).parent().children("a").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
            $(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
            //alert($('.on').length);
            let e = this.nextSibling.nextSibling.value;
            if(prev == 0){
            	prev = Number(e);
            	document.getElementById('star-' + e).value = $('.on').length;
            }else{
            	document.getElementById('star-' + prev).value = 0;
            	prev = 0;
            	document.getElementById('star-' + e).value = $('.on').length;
            }
            //document.getElementById('star-' + e).value = $('.on').length;
            alert(document.getElementById('star-' + e).value);
            //alert($(this).parent().children("input").value());
            //alert(document.getElement(this));
            return false;
        });
</script>
<c:if test="${page.currentPage == 1}">
	<input type="hidden" id="page-count" value="${page.pageCount}">
</c:if>
<c:forEach items="${list}" var="list" varStatus="index">
  <div class="col-lg-4 column-td-6">
    <div class="card-item">

        <a href="../search/camp_detail.wcc?camp_idx=${list.camp_idx}" class="card-image-wrap">
            <div class="card-image">
                <img src="/images/camp-img/thumb/${list.ofname}" class="card__img" style="height:250px;">
            </div>
        </a>

        <div class="card-content-wrap">
            <div class="card-content">
                <a href="../search/camp_detail.wcc?camp_idx=${list.camp_idx}">
                    <h4 class="card-title mt-0">${list.camp_name}</h4>
                    <p class="card-sub">${list.address}</p>
                </a>
            </div>
            <div class="rating-row">
                <div class="edit-info-box" style="padding-left: 230px;">
                    <!-- /////////////////////////// 리뷰 작성 버튼 열기 ///////////////////////////// -->
                    <!-- Button trigger modal -->
                    <c:if test="${list.review_state eq 'F'}">
                    <button type="button" 
                        class="theme-btn button-success border-0" data-toggle="modal" data-target="#exampleModal${list.booking_idx}" id="#modal_show${list.booking_idx}" href="#modal_show${list.booking_idx}">
                        <span class="la la-pencil-square"></span> 리뷰 작성
                    </button>
					</c:if>
                    <c:if test="${list.review_state eq 'T'}">
                    <button type="button"
                        class="theme-btn button-info border-0" id="#modal_show${list.booking_idx}" disabled>
                        <span class="la la-check-square-o"></span> 리뷰 완료
                    </button>
					</c:if>
					
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal${list.booking_idx}" tabindex="-1"
                        role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <input type="hidden" id="1">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">REVIEW</h5>
                                    <button type="button" class="close" data-dismiss="modal"
                                        aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <article>
                                        <div class="container" role="main">
                                            <h4 align="center">${list.camp_name}</h4>
                                            <form name="form" id="form${list.booking_idx}" method="post"
                                                action="add_review.wcc">
                                                <input type="hidden" id="star-${list.booking_idx}" value="0" name="star">
                                                <input type="hidden" value="${list.camp_idx}" name="camp_idx">
                                                <input type="hidden" value="${list.booking_idx}" name="booking_idx">
                                                
                                                
                                                <div class="mb-3">
                                                    <label for="reg_id">작성자</label> <input type="text"
                                                        class="form-control" name="reg_id" id=""
                                                        value="${list.email}" readonly>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="reg_id">별점 주기</label>
                                                    <div>
                                                    	<p id="star_grade${list.booking_idx}" class="star_grade" style=font-size:20px;>
                                                    	<input type="hidden" value="${list.booking_idx}">
														        <a href="">★</a>
														        <input type="hidden" value="${list.booking_idx}">
														        <a href="">★</a>
														        <input type="hidden" value="${list.booking_idx}">
														        <a href="">★</a>
														        <input type="hidden" value="${list.booking_idx}">
														        <a href="">★</a>
														        <input type="hidden" value="${list.booking_idx}">
														        <a href="">★</a>
														        <input type="hidden" value="${list.booking_idx}">
														</p>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="content">내용</label>
                                                    <textarea class="form-control" rows="5"
                                                        name="content" id=""
                                                        placeholder="이번 캠핑은 어떠셨나요? 리뷰를 작성해 주세요!"></textarea>
                                                </div>
                                            </form>
                                        </div>
                                    </article>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" onclick="submit_review(${list.booking_idx});">작성
                                        완료</button>
                                    <button type="button" class="btn btn-secondary"
                                        data-dismiss="modal">닫기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /////////////////////////// 리뷰 작성 버튼 닫기 ///////////////////////////// -->
                    
                </div>
            </div>
        </div>
        <!-- end card-content-wrap -->
    </div>
    <!-- end card-item -->
</div>
<!-- end -->
</c:forEach>
