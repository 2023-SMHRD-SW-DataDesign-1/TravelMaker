<%@page import="model.InfoDAO"%>
<%@page import="model.InfoDTO"%>
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

	<c:set var="idto" value="${InfoDAO.showInfo(info.user_id)}"></c:set>



	<div>
		<h1>제목나올부분</h1>
		${idto.info_title}

	</div>

	<div>
		<h1>카테고리 나올부분</h1>
		${idto.info_cate}

	</div>
	<div>
		<h1>내용 나올부분</h1>
		${idto.info_content}
	</div>
	<div>
		<h1>가격 나올부분</h1>
		${idto.info_fee}
	</div>



</body>
</html>