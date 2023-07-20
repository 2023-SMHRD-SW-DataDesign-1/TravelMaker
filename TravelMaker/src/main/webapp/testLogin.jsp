<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	<form action="LoginCon.do" method="post">
		<li><input type="text" placeholder="name을 입력하세요" name="name"></li>
		<li><input type="password" placeholder="PW를 입력하세요" name="pw"></li>
		<li><input type="text" placeholder="number" name="phoneNum"></li>
		<li><input type="submit" value="LogIn" class="button fit"></li>
	</form>
	
</body>
</html>