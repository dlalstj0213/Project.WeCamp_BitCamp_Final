
$(document).ready(function(){
	
	var my_point_val = $("#my_point").text();
	var my_point_val_before = my_point_val.split(': ');
	var my_point_before = my_point_val_before[1].split('P');
	var my_point =my_point_before[0];//포인트만 떼옴 (ex 1,000)
	var my_point_type_num = stringNumberToInt(my_point)//컴마 붙은 포인트 숫자형으로 바꿔줌(ex 1,000->1000)
	
	
	// 숫자 타입에서 쓸 수 있도록 format() 함수 추가
	Number.prototype.format = function(){
	    if(this==0) return 0;

	    var reg = /(^[+-]?\d+)(\d{3})/;
	    var n = (this + '');

	    while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');

	    return n;
	};
	
	//컴마 붙은 스트링형 숫자를 넘버형으로 바꿔주는 함수(ex. 2,222-> 2222)
	function stringNumberToInt(stringNumber){
	    return parseInt(stringNumber.replace(/,/g , ''));
	}
	
	//session 객체 테스트
	var sessionItem = JSON.parse(sessionStorage.getItem("bookingInfo"));
	console.log(sessionItem);
	
	$(".peopleNum").append(sessionItem.peopleNum+"명");
	// $(".peopleNum").val = sessionItem.peopleNum+"명";
	
    
	$(".camp_fee").append(sessionItem.campPrice);
	
	/* 금액에 컴마가 안 붙여서 온 경우의 처리 and Hidden input 값에 컴마 빼고 값 넣기
	 var test = sessionItem.campPrice;
	var test = $('.camp_fee').eq(0).text().format();
	var result = stringNumberToInt(test);
	console.log("result : "+result);
	$('#originalCampFee').val(result);*/
    
    var camp_fee_type_num = stringNumberToInt($('.camp_fee').eq(0).text());
    $(".bbq_fee").append(sessionItem.bbqPrice);

    var bbq_fee_type_num = stringNumberToInt($('.bbq_fee').eq(0).text());
    
    var service_fee_type_num = Math.ceil((camp_fee_type_num*0.05)/1000)*1000;//나온 값 천단위로 올림
    var service_fee = service_fee_type_num.format();
    $(".service_fee").append(service_fee);
    
    //포인트 사용 전 토탈 금액 띄우기
    var camp_total_type_num = (camp_fee_type_num)+(bbq_fee_type_num)+(service_fee_type_num);
    var camp_total = camp_total_type_num.format();
    $(".camp_total").append(camp_total);
    
    $(".booking_date").append(sessionItem.startDate+" ~ "+sessionItem.endDate);
	
    
	//포인트 입력 시 자동으로 ',(콤마)' 입력
	$("input[id='point']").bind('keyup', function(e){//인풋 폼에 포인트 입력 시 컴마 처리 and 포인트값 띄우기 and 포인트 값 뺀 총액 띄우기
		
		var rgx1 = /\D/g;
		var rgx2 = /(\d+)(\d{3})/;
		var num = this.value.replace(rgx1,"");
		
		while (rgx2.test(num)) num = num.replace(rgx2, '$1' + ',' + '$2');
		this.value = num;
		$("#use_point").text(this.value);
		var use_point = stringNumberToInt(this.value);
		if(isNaN(use_point)){
			use_point=0;
		}
		var point_type_num = stringNumberToInt(this.value);
		if(point_type_num>=my_point_type_num){//입력한 포인트 값이 보유한 포인트값보다 크거나 같을 때 보유한 최대 포인트로 설정해주기
			this.value=my_point_type_num;
		}
		if(point_type_num>=camp_total_type_num){//입력한 포인트 값이 총 결제 액보다 크거나 같을 때 포인트 값을 총 결제 액으로 설정해주기 and 총결제 액 0원으로 설정
			this.value=camp_total_type_num.format();
			$("#use_point").text(this.value);
			var total = 0;
		    $(".camp_total").text(total);
		    console.log("포인트 입력 했을 때(포인트>총액) : "+(my_point_type_num-camp_total_type_num));
		}else{
			var total = (camp_total_type_num)-(use_point);
			var camp_total = total.format();
		    $(".camp_total").text(camp_total);
		    console.log("포인트 입력 했을 때(포인트<총액) : "+(my_point_type_num-use_point));
		}
	});
	
	
	//포인트 전액 사용 버튼 눌렀을 시 포인트 값 띄우기 and 포인트 값 뺀 총액 띄우기
	$("#bt_use_point").click(function(){
		$("#point").val(my_point);
		$("#use_point").text(my_point);
		var my_point_type_num = stringNumberToInt(my_point);
		var camp_total_type_num = (camp_fee_type_num)+(bbq_fee_type_num)+(service_fee_type_num);
		
		if(my_point_type_num>=camp_total_type_num){//전액 포인트 값이 총 결제 액보다 크거나 같을 때 포인트 값을 총 결제 액으로 설정해주기 and 총결제 액 0원으로 설정
			this.value=camp_total_type_num;
			$("#point").val(camp_total_type_num);
			$("#use_point").text(this.value.format());
			var total = 0;
		    $(".camp_total").text(total);
		    console.log("포인트 전액 사용 버튼 눌럿을 때(포인트>총액) : "+((my_point_type_num)-(camp_total_type_num)));
		    console.log("1/포인트 전액 사용 버튼 눌럿을 때(포인트>총액) : "+my_point_type_num+"   "+camp_total_type_num);
		}else{
			var use_point =my_point_type_num;
			var total = (camp_total)-(use_point);
			var camp_total_type_num = total.format();
		    $(".camp_total").text(camp_total_type_num);
		    console.log("포인트 전액 사용 버튼 눌럿을 때(포인트<총액) : "+(my_point_type_num-use_point));
		    console.log("2/포인트 전액 사용 버튼 눌럿을 때(포인트<총액) : "+my_point_type_num+"   "+use_point);
		}
		
	});
    
    //전체 동의 클릭 시 전체 선택되는 function
	//최상단 체크박스 클릭
	$("#camp_thumb").attr("src", sessionItem.imgTest);//setAttr
    $("#chbAll").click(function(){
        //클릭되었으면
        if($("#chbAll").prop("checked")){
            //input태그의 name이 chb인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=chb]").prop("checked",true);
            $bt_pay = $("#bt_pay").attr("disabled", false);//전체 동의하면 결제하기 버튼 활성화
            //클릭이 안돼있으면
        }else{
            //input태그의 name이 chb인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=chb]").prop("checked",false);
            $bt_pay = $("#bt_pay").attr("disabled", true);//전체 동의 안 하면 결제하기 버튼 비활성화
        }
    });
    
    $(".chb").click(function(){//모든 체크박스가 체크되었을 때 결제하기 버튼이 활성화 돼라
    	if($("input:checkbox[id='chb1']").is(":checked") &
    		$("input:checkbox[id='chb2']").is(":checked") &
    		$("input:checkbox[id='chb3']").is(":checked") &
    		$("input:checkbox[id='chb4']").is(":checked") &
    		$("input:checkbox[id='chb5']").is(":checked")
    	){
		 $bt_pay = $("#bt_pay").attr("disabled", false);
    	}else{
    		 $bt_pay = $("#bt_pay").attr("disabled", true);//전체 동의 안 하면 결제하기 버튼 비활성화
    	}
	});
	$("#charge").on("click", function(){
		// toggle 함수는 팝오버가 show상태면 hide로 hide면 show를 실행한다.
		// 함수의 종류는 show, hide, toggle있다.
		$("#charge").popover('toggle');
		// destroy 함수도 존재하는데 이는 popover를 해제하는 함수이다.
	});
    //$("#charge").popover('toggle')
	//$("#charge").tooltip();
    
    $("#bt_use").click(function(){//이용규칙 동의 상세내역 띄우기
		$("#rules_area1").load("/common/rules_of_use.txt", function(p1, p2, p3){
			//alert("p1 : "+p1+" ,p2 : "+p2+" ,p3 : "+p3);
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
    
     $("#bt_refund").click(function(){//취소 및 환불 규칙 동의 상세내역 띄우기
		$("#rules_area2").load("/common/refund.txt");
	});
    
     /* $("#bt_refund").click(function(){
		$.get("/common/refund.jsp", function(p1,p2,p3){
			alert("p1 : "+p1+" ,p2 : "+p2+" ,p3 : "+p3);
			$("#rules_area2").html(p1);
		});
	});  */
    
    $("#bt_privacy").click(function(){//개인정보 수집 및 이용 동의 상세내역 띄우기
		$("#rules_area3").load("/common/privacy.txt");
	});
    
    $("#bt_privacy3").click(function(){//개인정보 제3자동의 상세내역 띄우기
		$("#rules_area4").load("/common/privacy3.txt");
	});
})
