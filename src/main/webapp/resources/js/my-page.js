/**
 * 
 */
 
 
 // 회원 정보 수정
 
 function getUploadTags(){
	// let nickName = document.createElement("input");
	// nickName.setAttribute("type", "text");
	// nickName.setAttribute("name", "nick-name");
	// nickName.setAttribute("value", document.getElementById('nick').value);
	// nickName.setAttribute("id", "nick-name");
	// var userTag = document.getElementById('user-name');
	// userTage.removeAttribute('readonly');
	$('#user-name').removeAttr('readonly');
	
	input_html = "";
        input_html += "<div class='input-box'>"
            + "<label class='label-text'>닉네임 </label>"
            + "<div class='form-group'>"
            + "<input type='text' name='nickname' value='"+document.getElementById('nick').value+"' class='form-control'>"
            + "</div>"                               
        	+ "</div>";
	 $('.update').val("저장");
	
	 $('.update').attr('onclick', 'update_mem();');
     $('#test').html(input_html);
     
 }
 
function update_mem(){
	$('.update').attr('type', 'submit');
	alert("수정 완료");

}

// 사업자 정보 띄우기
function owner_info(){
	$.ajax({
		url: "../owner/owner_detail.json",
		method: "GET",
		//data: {},
		dataType: "HTML",
		success: function(responseData){
			alert(responseData);
			//let test = $('#nav-camping').html(responseData);
			//test.trigger('create');

			document.getElementById('nav-camping').innerHTML = responseData;
			//$('#owner-info').html(responseData);
		}

	});
}
