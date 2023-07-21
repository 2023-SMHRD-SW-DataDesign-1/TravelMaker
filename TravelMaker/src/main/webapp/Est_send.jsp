<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>견적요청</title>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>

<!-- req_est_calendar link 시작 -->
<!-- href 수정함 -->

<link href="https://fonts.googleapis.com/css?family=Lato&display=swap"
	rel="stylesheet">
<!-- req_est_calendar link 끝 -->
<!-- chat box link 시작 -->
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel="stylesheet" href="css/Est_request.css">
<!-- chat box link 끝 -->
</head>
<body>
	<c:if test="${info == null}">
		<script>
			alert("로그인 후 이용해주세요.");
			location.href="Login.jsp";
		</script>
	</c:if>
	
	<form action="SendCon.do">
		<div>
		
			<!-- partial:index.partial.html -->
			<div class="main">
				<!-- 국가선택 시작 -->

				<h4>국가선택</h4>
				<select id="mounth" name="send_country">
					<option value="hide">-- 국가선택 --</option>
					<option value="국내">국내</option>
					<option value="동남아">동남아</option>
					<option value="유럽">유럽</option>
					<option value="러시아">러시아</option>
					<option value="북미">북미</option>
					<option value="남미">남미</option>
					<option value="아프리카">아프리카</option>
					<option value="인도">인도</option>
					<option value="중국">중국</option>
					<option value="일본">일본</option>
				</select>

				<!-- 국가선택 끝 -->

				<!-- 목적지 검색 시작 -->

				<h4>목적지설정</h4>
				<div>
					<input type="text" name="send_place" class="form-control" placeholder="목적지설정">
				</div>


				<!-- 목적지 검색 끝 -->

				<!-- 예산선택 시작 -->
				<h4>예산설정</h4>
				<div>
					<input type="text"  name="send_budget" class="form-control" placeholder="예산설정">
				</div>
				<!-- 예산선택 끝 -->
				<!-- 기존 p태크 링크  -->
				<!-- <p class="mt-4 text-center"><a href="https://www.gungorbudak.com/blog/2018/12/12/bootstrap-4-search-box-with-search-icon/">See how it's done on my blog</a></p> -->
			</div>
			<!-- partial -->
			<!-- req_est_calendar body 시작 -->

			<!-- /.main 끝 -->

			<!-- /.calender 시작 -->
			<section class="calendar">

				<div class="calendar__inputs">
					<input class="calendar__input" name="send_s_date" readonly="readonly" type="text" id="calendar-start" placeholder="Start Date"> 
					<input class="calendar__input"  name="send_e_date" readonly="readonly" type="text" id="calendar-end" placeholder="End Date">
				</div>

				<!-- Empty container for Pikaday Datepickers -->
				<div class="calendar__pikaday" id="calendar-container"></div>
				<button class="calendar__reset" id="calendar-clear">Reset</button>

			</section>

			<!-- /.calender 끝 -->
			<!-- partial -->
			<!-- js 경로 수정함 -->
			<script src='https://cdn.jsdelivr.net/npm/pikaday/pikaday.js'></script>
			<script src="./js/Est_send.js"></script>

			<!-- req_est_calendar body 끝 -->

			<!-- chat box body 시작 -->
			<div class="container">
				<div class="username">추가 요청사항</div>
				<textarea name="send_content" placeholder="message..."></textarea>
				<<!-- button type="submit" id="send">
					<span class="glyphicon glyphicon-send"></span>
				</button> -->
				<input type="submit" value="견적요청하기" id="send">

				<div id="Box" class="messages">
					<div class="message-box">
						<p class="message">hings only happen for the first time once.
							I would like to give you a backstage pass to my imagination. Have
							you urinated? Have you drained</p>
					</div>

				</div>
				<!-- chat box body 끝 -->


			</div>

		</div>
	</form>

</body>
</html>