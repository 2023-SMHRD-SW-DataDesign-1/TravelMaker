<%@page import="model.ResDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Est_nomal_responseList</title>
</head>
<style>
.wrap {
	display: block;
	padding: 16px;
	background-color: ##007bff;
	margin-top: 200px;
}

.list_box {
	display: inline-block;
	padding: 16px;
	background-color: ##f8f9fa;
}

ul {
	list-style: none;
	padding: 6px;
}

li {
	displya: block;
	font-size: 16px;
}
</style>
<body>

	<jsp:include page="Nav.jsp"></jsp:include>
	
	<div class="wrap">
		<c:set var="nomal_response" value="${ResDAO.nomal_response(info.user_id)}"></c:set>

		<h3>${info.user_id}님의받은견적요청페이지</h3>
		<c:forEach var="response_list" items="${nomal_response}" varStatus="status">
			<div class="list_box">
			<ul>
				<li>${response_list.est_num}</li>
				<li>${response_list.send_wr_date}</li>
				<li>${response_list.send_country}</li>
				<li>${response_list.send_s_date} ~ ${response_list.send_e_date}</li>
				<li>${response_list.send_content}</li>
				<li><a href="Est_nomal_response.jsp?est_num=${response_list.est_num}">받은견적 보러가기</a></li>
			</ul>
		</div>
		</c:forEach>
	</div>

	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>