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
int charge = Integer.parseInt(request.getParameter("charge"));

System.out.println(charge);

%>

</body>
</html>