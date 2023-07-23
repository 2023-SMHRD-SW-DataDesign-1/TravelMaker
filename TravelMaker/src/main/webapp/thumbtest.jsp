<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="model.InfoDAO"%>
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
/* 	InfoDAO idao = new InfoDAO();
	String htmlString = idao.show(); */
	String htmlString = "<img src='data:image/jpeg;base64,/9j/4AAQY6Y6qzP/2Q==' data-filename='mainpic.jpg' style='width: 1094.44px;'>asd<img src='data:image/jpeg;base64,/9j/4AAQY6Y6qzP/2Q==' data-filename='mainpic.jpg' style='width: 1094.44px;'> ";
	// 정규 표현식 패턴
	String pattern = "<img\\s+[^>]*>";

	// 정규 표현식 패턴에 매칭되는 부분을 찾아서 저장할 변수
	StringBuilder imgTags = new StringBuilder();

	// 정규 표현식에 매칭되는 부분을 찾기 위한 Matcher 객체 생성
	Matcher matcher = Pattern.compile(pattern).matcher(htmlString);

	// 매칭되는 부분을 찾으면 imgTags 변수에 추가 -> img 다찾음
	/* while (matcher.find()) {
		imgTags.append(matcher.group());
	} */
	
	// 맨 앞에있는 img태그만
	if (matcher.find()) {
		imgTags.append(matcher.group());
	}

	// 결과 출력
	System.out.println(imgTags.toString());
	%>






</body>
</html>