<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	 
    
    <h3>총 ${ list[0].site_num } / ${ using } 사용중</h3><br/>
    <h3>금일 체크아웃 완료 : ${ endUsing }</h3><br/>
    <h3>체크인 대기 : ${ notUsing }</h3><br/>
	<table id="table-part" class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>상태</th>
				<th>날짜</th>
				<th>1</th>
				<th>2</th>
				<th>3</th>
				<th>4</th>
				<th>5</th>
				<th>결제상태</th>
				<th>이용여부</th>
			</tr>
		</thead>
		<tbody id="table-body">
			<c:if test="${ !empty list }">
			<c:forEach items="${ list }" var="list" varStatus="status">
				<tr>
					<th scope="row">${ list.rnum }</th>
					<c:choose>
						<c:when test="${ list.using_state=='T' }">
							<td id="state${ list.imp_uid }" style="color:#18dE61">이용완료</td>
						</c:when>
						<c:when test="${ list.using_state=='U' }">
							<td id="state${ list.imp_uid }" style="color:#FF0000">이용중</td>
						</c:when>
						<c:otherwise>
							<td id="state${ list.imp_uid }" style="color:#1981E3">이용 전</td>
						</c:otherwise>
					</c:choose>
					<td>${ list.check_in }<br/> ~ ${ list.check_out }</td>
					<td>${ list.name }<br/>${ list.email }</td>
					<td>${ list.sort_name }<br/>${ list.site_name }</td>
					<td>${ list.tel }</td>
					<td>${ list.p_num }</td>
					<td>메모</td>
					<td><button>${ list.s_name }</button></td>
					<c:choose>
						<c:when test="${ list.using_state=='T' }">
							<td id="btn${ list.using_state }"><button disabled>완료 ✔</button></td>
						</c:when>
						<c:when test="${ list.using_state=='U' }">
							<td id="btn${ list.using_state }">
								<button onclick="endUsing('${list.imp_uid}', '${ page.currentPage }');">이용 완료</button>
							</td>
						</c:when>
						<c:otherwise>
							<td id="btn${ list.using_state }">
								<button onclick="startUsing('${list.imp_uid}', '${ page.currentPage }');">이용 시작</button>
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
			</c:if>
			
			<c:if test="${ empty list }">
				<tr>
					<th style="text-align:center" colspan='8'>오늘 예약된 정보가 없습니다</th>
				</tr>
			</c:if>
		</tbody>
	</table>
	
	<c:if test="${ !empty list }">
	<!-- Pagination -->
	<div style="text-align:center">
		<nav aria-label="...">
		  <ul class="pagination justify-content-center">
		 	<c:choose>
		 		<c:when test="${page.startPage eq 1}">
					<li class="page-item disabled">
				      <a class="page-link">Previous</a>
				    </li>
		 		</c:when>
		 		<c:otherwise>
					<li class="page-item">
				      <a class="page-link" onclick="getTest(true, true, '${page.startPage-1}');">Previous</a>
				    </li>
		 		</c:otherwise>
		 	</c:choose>
		 	
		 	
		  	<c:forEach begin="${page.startPage}" end="${page.endPage}" step="1" varStatus="status">
		  		<c:choose>
		  			<c:when test="${page.currentPage eq status.index}">
					    <li class="page-item active">
					      <a class="page-link" onclick="getTest(true, true, ${status.index});">${status.index}<span class="sr-only">(current)</span></a>
					    </li>
		  			</c:when>
		  			<c:otherwise>
					    <li class="page-item"><a class="page-link" onclick="getTest(true, true, ${status.index});">${status.index}</a></li>
		  			</c:otherwise>
		  		</c:choose>
		  	</c:forEach>
		  	
		 	<c:choose>
		 		<c:when test="${page.endPage eq page.pageCount}">
		 			<li class="page-item disabled">
				      <a class="page-link">Next</a>
				    </li>		
		 		</c:when>
		 		<c:otherwise>
		 		    <li class="page-item">
				      <a class="page-link" onclick="getTest(true, true, '${page.endPage+1}');">Next</a>
				    </li>
		 		</c:otherwise>
		 	</c:choose>
		  </ul>
		</nav>
	</div>
	</c:if>
