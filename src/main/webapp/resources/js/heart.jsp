<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
$(".heart").click(function(e){
	e.preventDefault();

	var strList = $(this).attr('id').split('-');
	const camp_idx = strList[1];
	let email = ${member.email};
	
	if(email===""){
		alert("ë¡ê·¸ì¸ì´ íìí©ëë¤.");
		location.href="https://127.0.0.1:8443/login/login.wcc";
		return false;
	}
	
	$.ajax({
	      url:"../heart/insert.wcc",
	      type:"GET",
	      data: { email : email, camp_idx : camp_idx },
	      dataType: "HTML",
	      contentType: 'application/x-www-form-urlencoded; charset=utf-8',
	      success: function(result) {
	          if (result*1!==0) { 
	        	 alert("ì±ê³µì ì¼ë¡ ì²ë¦¬ëììµëë¤.");
	        	 
	        	
	          } else {
	              alert("ì´ë¯¸ ì°í ìº íì¥ìëë¤.");
	              return false;
	          }
	      },
	      error: function(request, status, error) {
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	      }
	  });	
	
	let filled_button = '<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart-fill" fill="#ff6b6b" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/></svg>';
	 $(this).html(filled_button);
	 $(this).attr('class', 'clickedHeart');
	 
		
});

$(".clickedHeart").click(function(e){
	e.preventDefault();

	var strList = $(this).attr('id').split('-');
	const camp_idx = strList[1];
	const email = '${member.email}';
	
	if(email===""){
		alert("ë¡ê·¸ì¸ì´ íìí©ëë¤.");
		location.href="https://127.0.0.1:8443/login/login.wcc";
		return false;
	}
	
	$.ajax({
	      url:"../heart/delete.wcc",
	      type:"GET",
	      data: { email : email, camp_idx : camp_idx },
	      dataType: "HTML",
	      contentType: 'application/x-www-form-urlencoded; charset=utf-8',
	      success: function(result) {
	          if (result*1!==0) {
	        	 alert("í´ë¹ ìº íì¥ì ì°íê¸°ê° ì·¨ìëììµëë¤.");
	        	 let empty_button = '<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/></svg>';
	        		$(this).html(empty_button);
	        		$(this).attr('class', 'heart');
	        	
	          } else {
	              alert("í´ë¹ ìº íì¥ì ì° ë´ì­ì´ ììµëë¤.");
	              return false;
	          }
	      },
	      error: function(request, status, error) {
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	      }
	  });	
	
	 
		
});