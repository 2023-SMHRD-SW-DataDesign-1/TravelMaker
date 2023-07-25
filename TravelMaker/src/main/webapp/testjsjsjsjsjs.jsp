<%@page import="model.ConsultDTO"%>
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
ConsultDAO csdao = new ConsultDAO();
ArrayList<ConsultDTO> cons_list = csdao.showConsult();
System.out.println(cons_list);

%>

</body>
</html>