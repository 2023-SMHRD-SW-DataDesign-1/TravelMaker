<%@page import="model.HisDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.SendDTO"%>
<%@page import="model.HisDAO"%>
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
HisDAO hdao = new HisDAO();
String user_id = "user_test";
ArrayList<HisDTO> his_list = hdao.showHis(user_id);
System.out.println(his_list.size());
%>


</body>
</html>