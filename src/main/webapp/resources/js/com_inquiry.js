/**
 * 
 */
function submit(){
	document.getElementById("submit-inquiry").submit();
}
function setInputs(){
	document.getElementById("email").value = document.getElementById("text1").value;
	document.getElementById("owner_num").value = document.getElementById("text2").value;
	document.getElementById("title").value = document.getElementById("text3").value;
	document.getElementById("content").value = document.getElementById("text4").value;
	submit();
}

function email_required(){
	var html = "";
	html += "<div class='alert alert-danger' role='alert'>";
	html += "이메일을 정확히 기재해주세요.";
	html += "</div>";
	document.getElementById("check-input").innerHTML = html;
}

function business_num_required(){
	var html = "";
	html += "<div class='alert alert-danger' role='alert'>";
	html += "사업자 번호는 업체등록시 반드시 필요한 검증 절차입니다. 정확히 기재해주세요.";
	html += "</div>";
	document.getElementById("check-input").innerHTML = html;	
}

function content_required(){
	var html = "";
	html += "<div class='alert alert-danger' role='alert'>";
	html += "캠핑장명, 주소, 캠핑장 전화번호, 캠핑 사이트 수, 1일 최대 수용인원수, 주차장 면수, 편의시설, "
		+"안전시설, 기타부대 시설, 이용요금, 관리기관전화번호, 관리기관명은 필히 기재해주세요. "
		+"하나라도 빠지면 등록 해드릴 수 없으니 하나도 빠짐없이 작성해주세요.";
	html += "</div>";
	document.getElementById("check-input").innerHTML = html;
}

function photo_required(){
	var html = "";
	html += "<div class='alert alert-danger' role='alert'>";
	html += "캠핑장 등록시 필요한 이미지 파일을 업로드 해주세요. "
	html += "등록 완료 후 본 사진들은 캠핑장 상세 정보에 저장되기 때문에 "
		+ "사진을 구분 할 수 있도록 사진파일명을 정확히 기재해주세요.";
	html += "</div>";
	document.getElementById("check-photo-input").innerHTML = html;	
}