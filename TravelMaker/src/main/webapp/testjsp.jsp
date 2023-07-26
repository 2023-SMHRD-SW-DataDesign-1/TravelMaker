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
String user_id = "user_test";
ArrayList<ConsultDTO> cons_list = csdao.showConsult(user_id);
%>

	<%
	for (int i = 0; i < cons_list.size(); i++) { %>
		<%=cons_list.get(i).getCons_content() %>
		<%=cons_list.get(i).getCons_wr_date() %>
		<hr>
	<%		
	}
	%>


</body>
</html>