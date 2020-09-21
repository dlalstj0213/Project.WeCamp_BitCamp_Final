/**
 * 
 */
let buyer_tel = "";
let people_num = "";
let buyer_name = "";
let merchant_uid = "";
let camp_name="";
let buyer_email="";
let camp_total="";
let camp_total_type_num="";
let memo = "";
let udate="";

$(document).ready(function(){
	camp_idx = sessionItem.campIdx;
	buyer_tel = document.getElementById("buyer_tel").value;
	people_num = sessionItem.peopleNum;
	buyer_name = document.getElementById("buyer_name").value;
	merchant_uid = buyer_name+'_'+new Date().getTime();
	camp_name = sessionItem.campName;
	buyer_email = document.getElementById("buyer_email").value;
	sort_idx = sessionItem.sort_idx
	udate = sessionItem.checkDate
	
	//$("#merchant_uid").val(merchant_uid);	
	$("#camp_idx").val(camp_idx);
	$("#buyer_tel").val(buyer_tel);
	$("#my_points").val(my_point_type_num);
	$("#people_num").val(parseInt(people_num));
	$("#sort_idx").val(sort_idx);
	
	$("#udate").val(udate);

})
function setName(){
	buyer_name = document.getElementById("reserver_name").value;
	document.getElementById("buyer_name").value=buyer_name;
}
function setMemo(){
	memo = document.getElementById("buyer_memo").value
	console.log("memo : "+memo);
	document.getElementById("memo").value=memo;
}

function requestPay(){
	camp_total = document.getElementById("camp_total").innerText
	camp_total_type_num = stringNumberToInt(camp_total)
	$("#amount").val(camp_total_type_num);

	var IMP = window.IMP; // 생략해도 괜찮습니다.
	IMP.init("imp43926044"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.

	//IMP.request_pay(param, callback) 호출
	IMP.request_pay({ // param
		pg: "html5_inicis",
		pay_method: "card",
		merchant_uid: merchant_uid,
		name: camp_name,
		amount: 100,//camp_total_type_num,
		buyer_email: buyer_email,
		buyer_name: buyer_name,
		buyer_tel: buyer_tel,
		//buyer_addr: buyer_addr,
		//buyer_postcode: "01181",
		//m_redirect_url: './payment.wcc'
	}, function (rsp) { // callback
		if (rsp.success) {
			$("#remaining_point").val(after_payment_my_point);
			$("#imp_uid").val(rsp.imp_uid);
//			$("#check_in").val(checkIn);
//			$("#check_out").val(checkOut);
			$("#service_fee").val(service_fee_type_num);
			var buyer_information = document.buyerInformation;
			//alert("예에~ : "+buyer_information.buyer_email.value);
			buyer_information.submit();
			//alert("imp_uid : "+rsp.imp_uid+", buyer_email : "+buyer_email+", buyer_name : "+buyer_name+", buyer_tel : "+buyer_tel+", amount : "+camp_total_type_num+", after_payment_my_point : "+after_payment_my_point);
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID : ' + rsp.imp_uid;
			msg += '상점 거래ID : ' + rsp.merchant_uid;
			msg += '결제 금액 : ' + rsp.paid_amount;
			msg += '카드 승인번호 : ' + rsp.apply_num;
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
	});
}