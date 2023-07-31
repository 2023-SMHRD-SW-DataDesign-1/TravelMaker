<%@page import="model.RatingDAO"%>
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
RatingDAO radao = new RatingDAO();
String user_id = "gosu_test";
Double rating = radao.showRate(user_id);
System.out.println("rating : " + rating);
%>

</body>
</html>