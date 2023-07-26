//문서가 준비되면 제일 먼저 실행
$(document).ready(function() {
	$("#iamportPayment").click(function() {
		payment(); //버튼 클릭하면 호출 
	});
})


//버튼 클릭하면 실행
function payment(data) {
	IMP.init('imp54435132');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
	IMP.request_pay({// param
		pg: "kakaopay.TC0ONETIME", //pg사명 or pg사명.CID (잘못 입력할 경우, 기본 PG사가 띄워짐)
		pay_method: "card", //지불 방법
		merchant_uid: "iamport_test_id2", //가맹점 주문번호 (아임포트를 사용하는 가맹점에서 중복되지 않은 임의의 문자열을 입력)
		name: "도서", //결제창에 노출될 상품명
		amount: 13700, //금액
		buyer_email: "testiamport@naver.com",
		buyer_name: "홍길동",
		buyer_tel: "01012341234"
	}, function(rsp) { // callback
		if (rsp.success) {
			alert("완료 -> imp_uid : " + rsp.imp_uid + " / merchant_uid(orderKey) : " + rsp.merchant_uid);
		} else {
			alert("실패 : 코드(" + rsp.error_code + ") / 메세지(" + rsp.error_msg + ")");
		}
	});
}