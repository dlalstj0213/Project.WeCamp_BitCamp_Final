/**
 * 
 */
function showDetail(email){
	var detail_html = "";
	detail_html += "<div class='card mb-3'>"
		+ "<div class='card-header'>"
		+ "<h3><i class='fa fa-id-card-o bigfonts'></i> "+email+"회원 정보 수정</h3>"
		+ "정보를 수정 후 하단의 수정 버튼을 클릭해주세요."
		+ "</div>"
		+ "<div class='card-body'>"
		+ "<form>"
		+ "<div class='form-group row'>"
		+	"<label for='staticUserName' class='col-sm-2 col-form-label'>이름 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='staticUserName' value='email@example.com'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    + "<label for='staticUserEmail' class='col-sm-2 col-form-label'>이메일 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='staticUserEmail' value='email@example.com'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    +	"<label for='staticUserBirth' class='col-sm-2 col-form-label'>생년월일 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='staticUserBirth' value='email@example.com'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    + "<label for='staticUserPoint' class='col-sm-2 col-form-label'>포인트 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='staticUserPoint' value='email@example.com'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    + "<label for='staticUserLevel' class='col-sm-2 col-form-label'>등급 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='staticUserLevel' value='email@example.com'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    + "<label for='staticAuthority' class='col-sm-2 col-form-label'>권한 :</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='text' readonly class='form-control-plaintext' id='staticAuthority' value='email@example.com'>"
	    + "</div>"
	    + "</div>"
	    + "<div class='form-group row'>"
	    + "<label for='inputPassword' class='col-sm-2 col-form-label'>Password</label>"
	    + "<div class='col-sm-10'>"
	    + "<input type='password' class='form-control' id='inputPassword' placeholder='Password'>"
	    + "</div>"
	    + "</div>"
	    + "</form>"
	    + "<div id='button_center'>"
	    + "<button type='button' class='btn btn-outline-primary'>수정</button>&nbsp;"
	    + "<button type='button' class='btn btn-outline-warning'>탈퇴</button>&nbsp;"
	    + "<button type='button' class='btn btn-outline-danger'>삭제</button>"
	    + "</div>" 
	    + "</div>" //end card body
	    + "</div>" //end card
	    + "</div>"; //end col
		return detail_html;
}

window.onload = function(){
	var member_menu = document.getElementById('member-menu');
	var member_submenu = document.getElementById('member-submenu');
//	$('.submenu1').next('ul').toggleClass('hide');
	member_menu.classList.add('active');
	member_submenu.classList.add('active');
	$('.click-table-row').click(function(){
		//$('#member-detail').slideToggle({direction: 'left'}, 1000);
		$('#member-detail').hide();
		$('#member-detail').show(1000);
		var class_id = $(this).prop('id');
		//alert(class_id);
		var html = "";
		html = showDetail(class_id);
		$('#member-detail').html(html);
	});
	
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
//$('button').click(function(){
//    $('.blind').animate({width:"toggle"},'slow');
//});
//
