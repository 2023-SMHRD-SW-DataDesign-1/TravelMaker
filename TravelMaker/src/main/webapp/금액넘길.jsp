<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="Paytest.jsp">

		라디오버튼(1개만 선택) : 금액 고르기 <br> 
		<input type="radio" name="charge" value="5000" onclick="hideCustomInput()"> 5000원  
		<input type="radio" name="charge" value="10000" onclick="hideCustomInput()"> 10000원  
		<input type="radio" name="charge" id="customInputRadio" onclick="showCustomInput()"> 직접입력 
		<input type="number" id="customInput" style="display: none;"> <!-- 숨겨진 직접입력 값 입력 공간 -->
		<input type="button" value="선택" onclick="sendChargeValue()"> <!-- 값을 보내는 버튼 -->

	</form>

	<script>
		// "직접입력" 라디오 버튼과 숨겨진 입력 필드에 대한 참조를 가져옵니다.
		const customInputRadio = document.getElementById("customInputRadio");
		const customInput = document.getElementById("customInput");

		function showCustomInput() {
			customInput.style.display = "block";
		}

		function hideCustomInput() {
			customInput.style.display = "none";
		}
		
		function sendChargeValue() {
			var chargeValue;

			// 직접입력 라디오 버튼이 선택되었는지 확인
			if (customInputRadio.checked) {
				// 직접입력 값 입력 공간에서 값을 가져오기
				chargeValue = customInput.value;
			} else {
				// 선택된 라디오 버튼의 값을 가져오기
				var selectedRadio = document.querySelector('input[name="charge"]:checked');
				chargeValue = selectedRadio.value;
			}

			// Paytest 페이지로 값을 전달하기
			window.location.href = "Paytest.jsp?charge=" + chargeValue;
		}
	</script>
</body>
</html>