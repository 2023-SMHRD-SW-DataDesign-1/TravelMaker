<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"
	integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
	crossorigin="anonymous"></script>

<body>

	<form action="Paytest.jsp" onsubmit="return false;">

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

          // 1000으로 나눈 나머지가 0인지 확인
          if (chargeValue % 1000 !== 0) {
             alert("1000단위로 입력해주세요.");
          } else {
             // Paytest 페이지로 값을 전달하기
             window.location.href = "Paytest.jsp?charge=" + chargeValue;
          }
       }
   </script>
</body>

</html>