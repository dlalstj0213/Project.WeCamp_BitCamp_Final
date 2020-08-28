/**
 * 
 */

function setName(){
	let buyer_name = document.getElementById("reserver_name").value;
	document.getElementById("buyer_name").value=buyer_name;
}
function setTel(){
	let buyer_name = document.getElementById("phone_num").value;
	document.getElementById("buyer_tel").value=buyer_name;
}
	
function requestPay(){
	
	var IMP = window.IMP; // 생략해도 괜찮습니다.
    IMP.init("imp43926044"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
	
	let camp_total = document.getElementById("camp_total").innerText;
	let camp_total_type_num = stringNumberToInt(camp_total);
	
	let buyer_email = document.getElementById("buyer_email").value;
	let buyer_name = document.getElementById("buyer_name").value
	let buyer_tel = document.getElementById("buyer_tel").value;
	let buyer_addr = document.getElementById("buyer_addr").value;
	
	document.getElementById("buyer_name").value=buyer_name;
	
  	//IMP.request_pay(param, callback) 호출
  	  IMP.request_pay({ // param
  	    pg: "html5_inicis",
  	    pay_method: "card",
  	    merchant_uid: 'merchant_'+new Date().getTime(),
  	    name: sessionItem.campName,
  	    amount: 100,
  	    buyer_email: buyer_email,
  	    buyer_name: buyer_name,
  	    buyer_tel: buyer_tel,
  	    buyer_addr: buyer_addr,
  	    buyer_postcode: "01181",
  	    m_redirect_url: './payment.wcc'
  	  }, function (rsp) { // callback
  		 if ( rsp.success ) {
  	        var msg = '결제가 완료되었습니다.';
  	        msg += '고유ID : ' + rsp.imp_uid;
  	        msg += '상점 거래ID : ' + rsp.merchant_uid;
  	        msg += '결제 금액 : ' + rsp.paid_amount;
  	        msg += '카드 승인번호 : ' + rsp.apply_num;
  	        
  	       /* $.Ajax(sad){
  	        	
  	        }*/
  	        
  	     }else {
  	        var msg = '결제에 실패하였습니다.';
  	        msg += '에러내용 : ' + rsp.error_msg;
  	     }
  		  alert(msg);
  	  });
}
