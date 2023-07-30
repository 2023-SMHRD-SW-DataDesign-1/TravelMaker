<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 - 견적요청</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/req_est_survey_customer.css">

<!-- 캘린더 link 시작 -->
<link rel="stylesheet" href="css/calendar.css">
<link href="https://fonts.googleapis.com/css?family=Lato&display=swap"
	rel="stylesheet">
<!-- 캘린더 link 끝 -->

<!-- 예산설정 css -->
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css'>
<link rel="stylesheet" href="css/price.css">

</head>
<style>
.container{
	margin-top: 94px;
	margin-bottom: 50px;
}
</style>
<body>
	<%-- 	<%
	UserDTO info = (UserDTO) request.getAttribute("info");
	System.out.println(info);
	%>
	<%
	if (info == null) {
	%>
	<script>
	alert("로그인 후 이용해주세요."); 
	location.href="Login.jsp";
	</script>
	<%
	}
	%>
 --%>

	<c:if test="${info == null}">
		<script>
			alert("로그인 후 이용해주세요.");
			location.href = "Login.jsp";
		</script>
	</c:if>


	<!-- 네비게이션 시작 -->

	<jsp:include page="Nav.jsp"></jsp:include>

	<div class="container">

		<h1 id="title" class="header__title">견적 요청</h1>
		<p id="description" class="header__description">Travel Maker</p>
		<div class="user_est_send_flexBox">
			<header class="header">
				<img
					src="https://inside.lgensol.com/wp-content/uploads/2022/10/1-%EC%A0%84%EA%B8%B0%EB%B9%84%ED%96%89%EA%B8%B0.jpg"
					alt="" aria-hidden="true" class="illustration" />
			</header>

			<main class="main">
				<form action="SendCon.do" method="post" id="survey-form"
					class="survey" onsubmit="return validateForm()">
					<div class="progressbar" tabindex="0" role="progressbar"
						aria-valuemin="1" aria-valuemax="5" aria-valuenow="1"
						aria-valuetext="Question 1 of 5: How long have you been using our product?">
						<span class="progressbar__step active" aria-hidden="true"></span>
						<span class="progressbar__step" aria-hidden="true"></span> <span
							class="progressbar__step" aria-hidden="true"></span> <span
							class="progressbar__step" aria-hidden="true"></span> <span
							class="progressbar__step" aria-hidden="true"></span>
					</div>
				<!-- 첫번째질문 시작 -->
				<section class="survey__panel survey__panel--current"
					aria-hidden="false" data-index="1" data-panel="firstPanel"
					data-requirement="option">
					<h2 class="survey__panel__question">
						<span class="visuallyhidden">Question 1 of 5 </span>어디로 가세요?
					</h2>
					<div class="form-group">
						<select name="send_country" id="dropdown">
							<!-- <option value>국가선택</option> -->
							<option value="국내">국내</option>
							<option value="동남아">동남아</option>
							<option value="유럽">유럽</option>
							<option value="북미">북미</option>
							<option value="남미">남미</option>
							<option value="아프리카">아프리카</option>
							<option value="인도">인도</option>
							<option value="중국">중국</option>
							<option value="일본">일본</option>
						</select>

						<p class="error-message"></p>
					</section>
					<!-- 첫번째질문 끝 -->

					<!-- 두번째질문 시작 -->
					<section class="survey__panel" aria-hidden="true" data-index="2"
						data-panel="secondPanel" data-requirement="option">
						<h2 class="survey__panel__question">
							<span class="visuallyhidden">Question 2 of 5 </span>구체적인 목적지가
							어디세요?
						</h2>
						<div class="form-group form-group-textarea">
							<label for="recommendation"></label>
							<textarea name="send_place" id="recommendation"
								spellcheck="false" placeholder="세부 목적지를 작성해 주세요"></textarea>
						</div>
						<p class="error-message"></p>
					</section>
					<!-- 두번째질문 끝 -->

					<!-- 세번째질문 시작 -->
					<section class="survey__panel" aria-hidden="true" data-index="3"
						data-panel="thirdPanel" data-requirement="checkbox">

						<h2 class="survey__panel__question">
							<span class="visuallyhidden">Question 3 of 5 </span>예산이 얼마나 되세요?
						</h2>

						<div class="price-range-block">
							<!-- <div class="sliderText">Price Range Slider</div> -->
							<!--  <div id="slider-range" class="price-filter-range" name="rangeInput"></div> -->
							<div style="margin-bottom: 10px">
								<!-- <input type="number" min=0 max="9900" oninput="validity.valid||(value='0');" id="min_price"
                class="price-range-field" />
              <input type="number" min=0 max="10000" oninput="validity.valid||(value='10000');" id="max_price"
                class="price-range-field" /> -->
								<input type="number" name="send_budget" id="dropdown" class="send_budget" />
							</div>
						</div>
						<!-- =========== -->
						<p class="error-message"></p>
					</section>
					<!-- 세번째질문 끝 -->

					<!-- 네번째질문 시작 -->
					<section class="survey__panel" aria-hidden="true" data-index="4"
						data-panel="fourthPanel" data-requirement="option">
						<h2 class="survey__panel__question">
							<span class="visuallyhidden">Question 4 of 5 </span>언제 가세요?
						</h2>

						<!-- 캘린더 시작 -->
						<section class="calendar">
							<div class="calendar__inputs">
								<input class="calendar__input" name="send_s_date"
									readonly="readonly" type="text" id="calendar-start"
									placeholder="Start Date"> <input
									class="calendar__input" name="send_e_date" readonly="readonly"
									type="text" id="calendar-end" placeholder="End Date">
							</div>
							<!-- 리셋버튼-->
							<div class="calendar__pikaday" id="calendar-container"></div>
							<button class="calendar__reset" id="calendar-clear">Reset</button>
						</section>
						<!-- =========== -->
						<p class="error-message"></p>
						<!-- 캘린더 끝 -->

						<!-- partial -->
						<script src='https://code.jquery.com/jquery-1.12.4.js'></script>
						<script src='https://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>


					</section>
					<!-- 네번째질문 끝 -->

					<!-- 다섯번째질문 시작 -->
					<section class="survey__panel" aria-hidden="true" data-index="5"
						data-panel="fifthPanel" data-requirement="name;email;country;age">
						<h2 class="survey__panel__question">
							<span class="visuallyhidden">Question 5 of 5 </span>고수에게 추가적인
							요청사항이 있나요?
						</h2>


						<div class="survey__panel__personaldetails">
							<div class="form-group form-group-textarea">
								<label for="recommendation"></label>
								<textarea name="send_content" id="recommendation"
									spellcheck="false" placeholder="요청사항을 작성해 주세요"></textarea>
							</div>
						</div>

					</section>
					<!-- 다섯번째질문 끝 -->
					<div class="form-buttons">
						<button class="button" type="button" name="prev"
							disabled="disabled" aria-label="Previous" aria-hidden="true">
							Prev</button>
						<button class="button" type="button" name="next" aria-label="Next"
							aria-hidden="false">Next</button>
						<button class="button" type="submit" id="submit" name="submit"
							disabled="disabled" aria-hidden="true">Submit</button>
					</div>
				</form>
			</main>
		</div>
	</div>


	<jsp:include page="Footer.jsp"></jsp:include>


	<!-- 입력양식 제한 -->
	<script>
		function validateForm() {
			// input 값 가져오기
			var send_country = document.getElementsByName('send_country')[0].value;
			var send_place = document.getElementsByName('send_place')[0].value;
			var send_budget = document.getElementsByName('send_budget')[0].value;
			var send_s_date = document.getElementsByName('send_s_date')[0].value;
			var send_e_date = document.getElementsByName('send_e_date')[0].value;
			var send_content = document.getElementsByName('send_content')[0].value;

			if (send_country === "" || send_place === "" || send_budget === ""
					|| send_s_date === "" || send_e_date === ""
					|| send_content === "") {
				alert("모든 값을 입력해주세요.");
				// 폼 제출 방지
				return false;
			}
			// 모든 필드가 채워져 있으면 폼 제출
			return true;
		}
	</script>


	<!-- partial -->
	<script src="js/req_est_survey_customer.js"></script>

	<!-- 캘린더 script -->
	<script src='https://cdn.jsdelivr.net/npm/pikaday/pikaday.js'></script>
	<script src="js/calendar.js"></script>


	<!-- 예산설정 script -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js'></script>
	<script src="js/price.js"></script>


</body>
</html>