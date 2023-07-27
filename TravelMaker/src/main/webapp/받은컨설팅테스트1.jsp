<%@page import="model.SendDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ConsultDAO"%>
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
	ConsultDAO cdao = new ConsultDAO();
	String user_id = "user_test";
	ArrayList<SendDTO> esti_list = cdao.showEstimate(user_id);
	System.out.println(esti_list.size());
%>

<%
for(int i = 0; i < esti_list.size(); i++){
%>
<%= esti_list.get(i).getSend_budget() %>
<%= esti_list.get(i).getSend_content() %>
<%= esti_list.get(i).getSend_place() %>
<hr>



<%}%>


</body>
</html>