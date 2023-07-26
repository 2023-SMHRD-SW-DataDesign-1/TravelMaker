
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
<title>Insert title here</title>
<style type="text/css">
.wrap {
	padding: 20px;
	background-color: black;
	color: white;
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

p {
	color: white;
}

ul {
	list-style: none;
}

li {
	font-size: 16px;
	font-weight: bold;
	margin: 10px;
}
</style>
</head>
<body>

	<div class="wrap">
		<c:set var="gosu_response_list" value="${ResDAO.gosu_responseList(info.user_id)}"></c:set>

		<h3>${info.user_id}님의받은견적요청 페이지</h3>
		<c:forEach var="response_list" items="${gosu_response_list}"
			varStatus="status">
			<div class="list_box">
				<p>test3</p>
				<ul>
					<li>${response_list.send_wr_date}</li>
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
</body>
</html>