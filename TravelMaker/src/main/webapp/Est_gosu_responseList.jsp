
<%@page import="java.util.ArrayList"%>
<%@page import="model.ResDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/Est_gosu_responseList.css">
<style type="text/css">
.wrap {
	padding: 20px;
	background-color: black;
	color: white;
	margin-top: 100px;
}

.list_box {
	width: 400px;
	height: 300px;
	border-radius: 30px;
	background-color: gray;
	padding: 20px;
	color: #eeeeee;
	display: inline-block;
}

.list_box p {
	color: white;
}

.list_box ul {
	list-style: none;
}

.list_box li {
	font-size: 16px;
	font-weight: bold;
	margin: 10px;
}
</style>
</head>
<body>

	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->
	
	<div class="wrap">
		<c:set var="gosu_response_list" value="${ResDAO.gosu_responseList(info.user_id)}"></c:set>

		<h3>${info.user_id}님의받은견적요청페이지</h3>
		<c:forEach var="response_list" items="${gosu_response_list}" varStatus="status">
			<div class="list_box">
				<p>test3</p>
				<ul>
					<li>${response_list.send_wr_date}</li>
					<li>${response_list.user_id}</li>
					<li>${response_list.send_country}</li>
					<li>${response_list.send_place}</li>
					<li>${response_list.send_s_date}~${response_list.send_e_date}</li>
					<li>${response_list.send_budget}</li>
					<li>${response_list.send_content}</li>
					<li>고수돈많아</li>
				</ul>
			</div>
		</c:forEach>
	</div>

	<div class="app-container">
		<div class="app-content">
			<div class="projects-section">
				<div class="projects-section-header">
					<p>내가받은 요청</p>
					<p class="time"></p>
				</div>
				<div class="projects-section-line">
					<div class="projects-status">
						<div class="item-status">
							<span class="status-number">3</span> <span class="status-type">전체
								컨설팅</span>
						</div>
						<div class="item-status">
							<span class="status-number">2</span> <span class="status-type">받은
								컨설팅</span>
						</div>
						<div class="item-status">
							<span class="status-number">1</span> <span class="status-type">지난
								컨설팅</span>
						</div>
					</div>
				</div>
				
				<!-- gosu-response 목록 시작 -->
				
				<h3 class="center">동남아여행</h3>
				<div class="project-boxes jsGridView">
				
				<c:forEach var="response_list" items="${gosu_response_list}" varStatus="status">
					<div class="project-box-wrapper">
						<div class="project-box" style="background-color: #fee4cb;">
							<div class="project-box-content-header">
								<p class="box-content-header">${response_list.send_country}</p>
								<p class="box-content-subheader">${response_list.user_id}</p>
							</div>
							<div class="box-progress-wrapper">
								<p class="box-progress-header">${response_list.send_s_date}~${response_list.send_e_date}</p>
								<div class="box-progress-bar">
									<!-- <span class="box-progress"
										style="width: 60%; background-color: #ff942e"></span> -->
								</div>
							</div>
							<div class="project-footer-box">
								<span>${response_list.send_content}</span>
								<p>${response_list.send_budget}</p>
							</div>
						</div>
					</div>
				</c:forEach>
					<!-- gosu-response 목록 끝 -->
					
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
	
	
	<!-- partial -->
	<script>
	
	date = new Date();
	year = date.getFullYear();
	month = date.getMonth() + 1;
	day = date.getDate();
	document.getElementsByClassName("time");.innerHTML = year + "/" + month + "/" + day;
	</script>
	
	<script src="js/Est_gosu_responseList.js"></script>
	

</body>
</html>