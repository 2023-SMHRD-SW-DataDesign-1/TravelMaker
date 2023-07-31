<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="model.InfoDAO"%>
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
	System.out.println("인포넘 : " + his_list.get(0).getInfo_num());

	InfoDAO idao = new InfoDAO();
	%>

<%-- 	<%
 	for (int i = 0; i < his_list.size(); i++) {
		int info_num = his_list.get(i).getInfo_num();
		String htmlString = idao.show(info_num);
		// 정규 표현식 패턴
		String pattern = "<img\\s+[^>]*>";

		// 정규 표현식 패턴에 매칭되는 부분을 찾아서 저장할 변수
		StringBuilder imgTags = new StringBuilder();

		// 정규 표현식에 매칭되는 부분을 찾기 위한 Matcher 객체 생성
		Matcher matcher = Pattern.compile(pattern).matcher(htmlString);

		// 맨 앞에있는 img태그만
		if (matcher.find()) {
			imgTags.append(matcher.group());
		}

		// imgTags가 비어있는 경우, 다음 반복으로 넘어감
		if (imgTags.toString().isEmpty()) {
			continue;
		}
	%>
		
		<%=imgTags%>		
		
	<%
	}
	%>  --%>

	

</body>
</html>