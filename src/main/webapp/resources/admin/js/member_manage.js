/**
 * 
 */
function dataForm(dateNtime){
	let d = new Date(dateNtime);
	let month = "";
	let date = "";
	if((d.getMonth()+1)<10){
		month += "0" + (d.getMonth()+1);
	} else{
		month += (d.getMonth()+1);
	}
	if(d.getDate() < 10){
		date += "0"  + d.getDate();
	} else{
		date += d.getDate();
	}
	
	let formattedDate = d.getFullYear() + "-" + month + "-" + date;
	let hours = (d.getHours() < 10) ? "0" + d.getHours() : d.getHours();
	let minutes = (d.getMinutes() < 10) ? "0" + d.getMinutes() : d.getMinutes();
	let formattedTime = hours + ":" + minutes;
	
	return formattedDate;
	
}


function showDetail(responseData, currnetPage, isSearched){
	let detail_html = "";
	detail_html += "<div class='card mb-3'>"
		+ "<div class='card-header'>"
		+ "<h3><i class='fa fa-id-card-o bigfonts'></i> "+responseData.name+" - 회원 정보 수정</h3>"
		+ "정보를 수정 후 하단의 수정 버튼을 클릭해주세요."
		+ "</div>"
		+ "<div class='card-body'>"
		+ "<form>"
		+ "<div class='form-group row'>"
		+	"<label for='detail-name' class='col-sm-2 col-form-label'>이름 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='detail-name' value='"+responseData.name+"'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    + "<label for='detail-email' class='col-sm-2 col-form-label'>이메일 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='detail-email' value='"+responseData.email+"'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    +	"<label for='detail-birth' class='col-sm-2 col-form-label'>생년월일 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='detail-birth' value='"+dataForm(responseData.birth)+"'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    + "<label for='detail-point' class='col-sm-2 col-form-label'>포인트 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='detail-point' value='"+responseData.point+"'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    + "<label for='detail-grade' class='col-sm-2 col-form-label'>등급 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext modify-input' id='detail-grade' value='"+responseData.grade+"'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    + "<label for='detail-a-name' class='col-sm-2 col-form-label'>권한 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext modify-input' id='detail-a-name' value='"+responseData.a_name+"'>"
	    + "</div>"
		+ "</div>";
	    if(responseData.owner_num != null){
	    	detail_html += "<div class='form-group row'>"
	    		+ "<label for='detail-owner-num' class='col-sm-2 col-form-label'>사업자번호 :</label>"
	    		+ "<div class='col-sm-10'>"
	    		+ "<input type='text' readonly class='form-control-plaintext modify-input' id='detail-owner-num' value='"+responseData.owner_num+"'>"
	    		+ "</div>"
	    		+ "</div>"
		    	+ "<div class='form-group row'>"
		    	+ "<label for='detail-com-name' class='col-sm-2 col-form-label'>회사명 :</label>"
		    	+ "<div class='col-sm-10'>"
		    	+ "<input type='text' readonly class='form-control-plaintext modify-input' id='detail-com-name' value='"+responseData.com_name+"'>"
		    	+ "</div>"
		    	+ "</div>"
		    	+ "<div class='form-group row'>"
		    	+ "<label for='detail-com-addr' class='col-sm-2 col-form-label'>회사주소 :</label>"
		    	+ "<div class='col-sm-10'>"
		    	+ "<input type='text' readonly class='form-control-plaintext modify-input' id='detail-com-addr' value='"+responseData.com_addr+"'>"
		    	+ "</div>"
		    	+ "</div>"
		    	+ "<div class='form-group row'>"
		    	+ "<label for='detail-com-tel' class='col-sm-2 col-form-label'>회사번호 :</label>"
		    	+ "<div class='col-sm-10'>"
		    	+ "<input type='text' readonly class='form-control-plaintext modify-input' id='detail-com-tel' value='"+responseData.com_tel+"'>"
		    	+ "</div>"
		    	+ "</div>";
	    }
	    detail_html += "</form>"
	    + "<div id='button_center'>";
	    if(isSearched == true){
	    	detail_html += "<button type='button' class='btn btn-outline-warning' onclick='leaveMember(\""+responseData.email+"\", \""+currnetPage+"\", "+isSearched+");'>탈퇴</button>";
	    }else{
	    	detail_html += "<button type='button' class='btn btn-outline-warning' onclick='leaveMember(\""+responseData.email+"\", \""+currnetPage+"\", \""+isSearched+"\");'>탈퇴</button>";
	    }
	    detail_html += "</div>" 
	    + "</div>" //end card body
	    + "</div>" //end card
	    + "</div>"; //end col
		return detail_html;
}

function row_click(row, currnetPage, isSearched){
	$('#member-detail').hide();
	$('#member-detail').show(1000);
	let class_id = $(row).prop('id');
	
	$.ajax({
		url: "member_datail.json",
		method: "GET",
		data: {
			email: class_id
		},
		dataType: "JSON",
		success: function(responseData){
			$('#member-detail').html(showDetail(responseData, currnetPage, isSearched));
		}
	});
}

window.onload = function(){
	getMemberList(1);
	
	$(function() {
	    $("#btnStart").on("click", function(){
	       $(".bar").stop().animate({
	            width: "400px"  // CSS width 프로퍼티의 값을 "400px"로 설정함.
	        }, 2000, "linear"); // 시간당 속도 함수를 "linear"으로 설정함.
	    });
	    $("#btnEnd").on("click", function(){
	        $(".bar").stop().animate({
	            width: "1px"   // CSS width 프로퍼티의 값을 "1px"로 설정함
	        }, 2000, "swing");  // 시간당 속도 함수를 "swing"으로 설정
	    });
	  });
}

function getMemberList(cp){
	$.ajax({
		url: "member.json",
		method: "GET",
		data: {
			currentPage: cp
		},
		dataType: "HTML",
		success: function(responseData){
			$('#card-body-table').html(responseData);
		}
	});
}

function leaveMember(email, currentPage, isSearched){
	$.ajax({
		url: "leave_member.json",
		method: "POST",
		//contentType: "application/json",
		data: {
			"email": email,
		},
		dataType: "TEXT",
		success: function(responseData){
			//alert("성공");
			if(responseData == "true"){
				//alert("탈퇴 완료");
				let msg = " ";
				//탈퇴 완료 후 view 에 메시지 알림 띄울 필요 있음
				$('#member-detail').html(msg);
				//
				if(isSearched == true){
					search_word(currentPage);
				} else {
					getMemberList(currentPage);
				}
			}
		}
	});
}

function startUpdate(){
	alert("수정시작");
	let modify_inputs = document.getElementsByClassName('modify-input');
	for(let input of modify_inputs){
		input.removeAttribute('readonly');
		console.log(input.getAttribute('id'));
	}
	modify_inputs[0].focus();
	//let test = document.getElementsByClassName('modify-input');
	//alert(test[0].getAttribute('id'));
}

function search_word(currentPage){
	let keyword = document.getElementById('search').value;
	let category = document.getElementById('category-search').value;
	$.ajax({
		url: "search_member.json",
		type: "GET",
		data: {
			"currentPage": currentPage,
			"keyword": keyword,
			"category": category
		},
		dataType: "HTML",
		success: function(responseData){
			$('#card-body-table').html(responseData);
		}
	});
}
