<%@page import="model.UserDTO"%>
<%@page import="model.ResDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ResDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고수 - 채택된 견적</title>
</head>
<body>

	<%
	UserDTO udto = (UserDTO) session.getAttribute("info");
	
	String user_id = udto.getUser_id();
	System.out.println(user_id);
	ResDAO rdao = new ResDAO();
	ArrayList<ResDTO> paid_list = rdao.showPaidlist(user_id);
	ArrayList<ResDTO> Unpaid_list = rdao.showUnPaidlist(user_id);
	System.out.println(paid_list.size());
	%>

	<div>
	<h1>채택안된 견적서</h1>
	<!-- 채택된 모든 견적서 불러오는 코드 -->
	<%
	for (int i = 0; i < Unpaid_list.size(); i++) {
	%>	
	<div id="writedate">
	<!-- 작성일 -->
	작성일 : 
	<%=Unpaid_list.get(i).getRes_wr_date() %>
	</div>
	<div id="content">
	<!-- 견적서내용 -->
	내용 : 
	<%=Unpaid_list.get(i).getRes_content() %>
	</div>
	<div id="fee">
	<!-- 견적서에 적힌 요금 -->
	요금 :	
	<%=Unpaid_list.get(i).getRes_fee() %>
	</div>
	<!-- 컨설팅 작성하러가는 버튼 필요 -->
	<%
	}
	%>
	</div>

	<div>
	<h1>채택된 견적서</h1>
	<!-- 채택된 모든 견적서 불러오는 코드 -->
	<%
	for (int i = 0; i < paid_list.size(); i++) {
	%>	
	<div id="writedate">
	<!-- 작성일 -->
	작성일 : 
	<%=paid_list.get(i).getRes_wr_date() %>
	</div>
	<div id="content">
	<!-- 견적서내용 -->
	내용 : 
	<%=paid_list.get(i).getRes_content() %>
	</div>
	<div id="fee">
	<!-- 견적서에 적힌 요금 -->
	요금 :	
	<%=paid_list.get(i).getRes_fee() %>
	</div>
	<!-- 컨설팅 작성하러가는 버튼 필요 -->
	<button></button>		
	<%
	}
	%>
	</div>






</body>
</html>