
// 비밀번호 재확인 스크립트


    $(function(){
        $("#alert-success").hide();
        $("#alert-danger").hide();
        $("#pwd-danger").hide();
        $("input").blur(function(){
            var pwd=$("#pwd").val();
            var pwdCheck=$("#pwdCheck").val();
            if(pwd != "" || pwdCheck != ""){
                if(pwd == pwdCheck){
                    $("#alert-success").show();
                    $("#alert-danger").hide();
                    $("#submit").removeAttr("disabled");
                }else{
                    $("#alert-success").hide();
                    $("#alert-danger").show();
                    $("#submit").attr("disabled", "disabled");
                }    
            }
        });
    });

// 비밀번호 정규식
 
// 비밀번호 패턴 체크 (8자 이상, 문자, 숫자, 특수문자 포함여부 체크) 
$("#pwd").change(function(){
    checkPassword($('#pwd').val());
});
function checkPassword(pwd){
    
    if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/.test(pwd)){            
        //alert('숫자, 영문자, 특수문자 조합으로 8자리 이상 사용해야 합니다.');
        $('#pwd').val('').focus();
        $("#pwd-danger").show();
        return false;
    }else{
    	$("#pwd-danger").hide();
    }
    
    var checkNumber = pwd.search(/[0-9]/g);
    var checkEnglish = pwd.search(/[a-z]/ig);
    if(checkNumber <0 || checkEnglish <0){
        alert("숫자와 영문자를 혼용하여야 합니다.");
        $('#pwd').val('').focus();
        return false;
    }
    if(/(\w)\1\1\1/.test(pwd)){
        alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
        $('#pwd').val('').focus();
        return false;
    }
    
    return true;
}



 /* 이메일 체크  */   
 // email check function
    function email_check( email ) {    
        var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        return (email != '' && email != 'undefined' && regex.test(email)); 
    }
    $("#result-check").hide();
    
    // check when email input lost focus
    $(".input-check-email").blur(function(){
    	
      var email = $(this).val();
      
      // if value is empty then exit
      if( email == '' || email == 'undefined') return;

      // valid check
      if(! email_check(email) ) {
      	$("#result-check").show();
      	var html="<div>이메일 형식에 맞춰 입력해 주세요</div>";
      	$("#email-check").hide();
		$('#result-check').empty();
		$('#result-check').append(html);
        $(this).focus();
        return false;
      }
      else {
    	$("#result-check").hide();
      }
    });
   
/* 로그인 이메일 체크  */   
 // login email check function
    function email_login( email2 ) {    
        var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        return (email2 != '' && email2 != 'undefined' && regex.test(email2)); 
    }
    $("#result-check2").hide();
    // check when email input lost focus
    $(".input-check-email2").blur(function(){
    
      var email2 = $(this).val();
      
      // if value is empty then exit
      if( email2 == '' || email2 == 'undefined') return;

      // valid check
      if(! email_login(email2) ) {
      	$("#result-check2").show();
        $(this).focus();
        return false;
      }
      else {
    	$("#result-check2").hide();
      }
    });
  
    







$(function(){
	$('#aid').click(function(){
		//텍스트 파일 읽어오기
		//지금은 우리가 서버에서 데이터를 생성해서 리턴을 못하기 때문에 파일을 만들어서 읽지만 
		//나중에는 파일 이름을 적지 않고 URL을 기재해서 데이터를 읽어올 것이다.
		$('#textfile').load('/common/text.txt', function(p1, p2, p3){
		if(p2 == "success"){
			//alert("성공");
			//alert("status : "+p3.status+", readyState : "+p3.readyState);
		}
		if(p2 == "error"){
			//alert("실패");
			//alert("p1: "+p1+"status : "+p3.status+", readyState : "+p3.readyState);
		}
		});
	});
})


$(function(){
	$('#aid2').click(function(){
		//텍스트 파일 읽어오기
		//지금은 우리가 서버에서 데이터를 생성해서 리턴을 못하기 때문에 파일을 만들어서 읽지만 
		//나중에는 파일 이름을 적지 않고 URL을 기재해서 데이터를 읽어올 것이다.
		$('#textfile2').load('/common/text2.txt', function(p1, p2, p3){
		if(p2 == "success"){
			//alert("성공");
			//alert("status : "+p3.status+", readyState : "+p3.readyState);
		}
		if(p2 == "error"){
			//alert("실패");
			//alert("p1: "+p1+"status : "+p3.status+", readyState : "+p3.readyState);
		}
		});
	});
})

