<%@page import="model.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	InfoDAO idao = new InfoDAO();
	idao.showInfo(info.user_id);
	%>
	<div>
		<h1>제목나올부분</h1>
		<%=info_title%>
	</div>
	
	<div>
	<h1>아이디 나올부분</h1>
	<%=user_id %>
	</div>
	<div>
	<h1>내용 나올부분</h1>
	<%=info_content %>
	</div>


</body>
</html>