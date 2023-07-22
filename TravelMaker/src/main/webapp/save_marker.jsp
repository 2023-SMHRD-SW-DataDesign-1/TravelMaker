<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String lat = request.getParameter("lat");
	String lng = request.getParameter("lng");
	System.out.println(lat);
	System.out.println(lng);
	%>

</body>
</html>