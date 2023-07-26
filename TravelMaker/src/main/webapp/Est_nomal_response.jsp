<%@page import="model.ResDAO"%>
<%@page import="model.SendDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CodePen - Remove Elipsis &amp; Reveal</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/tomik23/show-more@master/docs/show-more.css" />
<!-- res_est_1-2 link 시작 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css'>
<link rel="stylesheet" href="css/res_est_customer.css">
<!-- res_est_1-2 link 시작 -->

</head>
<body>
	<div class="wrapper">
		<%
		int est_num = Integer.parseInt(request.getParameter("est_num"));
		System.out.println(est_num);
		%>
		<c:set var="nomal_responseList" value="${ResDAO.nomal_responseList(info.user_id)}"></c:set>
		<c:set var="SendUserInfo" value="${SendDAO.SendUserInfo(info.user_id)}"></c:set>

		<div class="left-wrap">
		<h3>나의 견적요청</h3>
			<ul>
				<li>${SendUserInfo.est_num}</li>
				<li>${SendUserInfo.send_wr_date}</li>
				<li>${SendUserInfo.send_country}</li>
				<li>${SendUserInfo.send_place}</li>
				<li>${SendUserInfo.send_s_date} ~ ${SendUserInfo.send_e_date}</li>
				<li>${SendUserInfo.send_budget}</li>
			</ul>
		</div>

		<c:forEach var="nomal_responseList" items="${nomal_responseList}"
			varStatus="status">
			<div class="card">
				<button>견적승인</button>
				<div class="img-wrap"></div>
				<a href="#">${nomal_responseList}</a><br>
				<button>고수 마이페이지</button>
				<br> <br>
				<div class="text"
					data-config='{ "type": "text", "element": "div", "limit": 80, "more": "자세히보기 ↓", "less": "접기 ↑"}'>
					Lorem ipsum dolor sit amet consect adipis elit. Sapiente ipsa est
					nulla dolorum cum modi, iste sit quia incidunt iusto suscipit totam
					nihil vero eaque nobis dignissimos repellat magni culpa!
					<h4>내가 받은견적</h4>
					<!-- res_est_1-2 body 시작 -->

					<!-- partial:index.partial.html -->
					<section class="tree-view flex-column justify-center align-center">

						<div class="line-item">
							<div class="flex-row align-center sub-line">

								<div
									class="title text-uppercase flex-row justify-space-between align-center">
									<span>국가</span> <span class="line-number"></span>
								</div>
							</div>
							<div class="extra-data flex-row align-center sub-line">
								<!-- <div class="margin-suffix first-color">국내 </div> -->
								<i
									class="fas fa-arrow-right first-color margin-suffix  second-color"></i>
								<span class="margin-suffix">${send_info.send_country}</span>
								<!-- <span class="margin-suffix">object2</span>
			<span class="margin-suffix">object3</span> -->

							</div>
						</div>

						<div class="line-item">
							<div class="flex-row align-center sub-line">

								<div
									class="title text-uppercase flex-row justify-space-between align-center">
									<span>목적지</span> <span class="line-number">2</span>
								</div>
							</div>
							<div class="extra-data flex-row align-center sub-line">
								<!-- <div class="margin-suffix first-color">scope </div> -->
								<i
									class="fas fa-arrow-right light-blue margin-suffix first-color"></i>
								<span class="margin-suffix">${send_info.send_place}</span>

							</div>
						</div>

						<div class="line-item">
							<div class="flex-row align-center sub-line">

								<div
									class="title text-uppercase flex-row justify-space-between align-center">
									<span>예산</span> <span class="line-number">3</span>
								</div>
							</div>
							<div class="extra-data flex-row align-center sub-line">
								<!-- <div class="margin-suffix  second-color">scope </div> -->
								<i
									class="fas fa-arrow-right light-blue margin-suffix  second-color"></i>
								<span class="margin-suffix">${send_info.send_budget}</span>
							</div>
							
						</div>

						<div class="line-item">
							<div class="flex-row align-center sub-line">

								<div
									class="title text-uppercase text-uppercase flex-row justify-space-between align-center">
									<span>날짜</span> <span class="line-number">4</span>
								</div>
							</div>
							<div class="extra-data flex-row align-center sub-line">
								<!-- <div class="margin-suffix first-color">scope </div> -->
								<i
									class="fas fa-arrow-right light-blue margin-suffix  first-color"></i>
								<span class="margin-suffix">${send_info.send_s_date} ~
									${send_info.send_e_date}</span>

							</div>
						</div>

						<div class="line-item">
							<div class="flex-row align-center sub-line">

								<div
									class="title text-uppercase flex-row justify-space-between align-center">
									<span>요청사항</span> <span class="line-number">5</span>
								</div>
							</div>
							<div class="extra-data flex-row align-center sub-line">
								<!-- <div class="margin-suffix first-color">scope </div> -->
								<i
									class="fas fa-arrow-right light-blue margin-suffix  first-color"></i>
								<span class="margin-suffix">${send_info.send_content}</span>

							</div>
						</div>

						<div class="line-item2">
							<div class="flex-row align-center sub-line">

								<div
									class="title text-uppercase flex-row justify-space-between align-center">
									<span>총 비용</span>

									<!-- <span class="line-number">6</span> -->
								</div>
							</div>
							<div class="extra-data flex-row align-center sub-line">
								<!-- <div class="margin-suffix  third-color">scope </div> -->
								<span class="margin-suffix">20,000원</span>
								<!-- <span class="margin-suffix">object6</span> -->
							</div>
						</div>

					</section>
					<!-- partial -->
					<!-- res_est_1-2 body 끝 -->

				</div>
				<!--<button class="reveal">Show more</button>-->


			</div>

		</c:forEach>
	</div>

	<script
		src="https://cdn.jsdelivr.net/gh/tomik23/show-more@master/docs/showMore.min.js"></script>
	<!-- partial -->
	<script src="./js/res_est_customer.js"></script>

</body>
</html>