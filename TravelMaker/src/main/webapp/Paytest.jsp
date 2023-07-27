<%@page import="model.UserDTO"%>
<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<body>

	<%
	int charge = Integer.parseInt(request.getParameter("charge"));
	UserDTO udto = (UserDTO) session.getAttribute("info");

	System.out.println(charge);

	String user_id = udto.getUser_id();
	String user_name = udto.getUser_name();
	String merchant_uid = UUID.randomUUID().toString();

	%>



	<div>
		<h2>IAMPORT 결제 데모</h2>
		<li>
			<button id="iamportPayment" type="button">결제테스트</button>
		</li>
	</div>

	<!-- <script src="js/PaymentAPI.js"></script> -->
	<script>
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
				pg : "kakaopay.TC0ONETIME", //pg사명 or pg사명.CID (잘못 입력할 경우, 기본 PG사가 띄워짐)
				pay_method : "card", //지불 방법
				merchant_uid : "<%=merchant_uid%>", //가맹점 주문번호 (아임포트를 사용하는 가맹점에서 중복되지 않은 임의의 문자열을 입력)
				name : "도서", //결제창에 노출될 상품명
				amount : <%=charge%>, //금액
				buyer_id : "<%=user_id%>",
				buyer_name : "<%=user_name%>"
			},
					function(rsp) { // callback
						if (rsp.success) {
							alert("완료 -> imp_uid : " + rsp.imp_uid+ " / merchant_uid(orderKey) : "+ rsp.merchant_uid);
							 window.location.href = "PayCon.do?charge=<%=charge%>&user_id=<%=user_id%>";
						} else {
							alert("실패 : 코드(" + rsp.error_code + ") / 메세지("
									+ rsp.error_msg + ")");
						}
					});
		}
	</script>
</body>
</html>