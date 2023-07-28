<%@page import="java.util.ArrayList"%>
<%@page import="model.InfoDAO"%>
<%@page import="model.InfoDTO"%>
<%@page import="model.UserDAO"%>
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
	InfoDAO idao = new InfoDAO();
	String info_cate = "사진";
	ArrayList<InfoDTO> pic_list = idao.showPicInfo(info_cate);	
	
	System.out.println(pic_list.size());
%>

<%
for(int i = 0; i < pic_list.size(); i++){
%>
	<%= pic_list.get(i).getInfo_content() %>
	<%= pic_list.get(i).getInfo_fee() %>
<%
}
%>


</body>
</html>