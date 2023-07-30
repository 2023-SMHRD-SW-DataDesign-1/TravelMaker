
<%@page import="model.UserDTO"%>
<%@page import="model.UserDAO"%>
<%@page import="model.SendDTO"%>
<%@page import="model.SendDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<style>
/* @import "//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css"; */
.editor-contents {
	height: 700px;
	padding-bottom: 50px;
	margin-top: 50px;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: row;
	flex-wrap: wrap;

	/* height: 700px;
            padding-bottom: 50px;
            margin-top: 50px;
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-evenly; */
}

#tip-title-box {
	width: 100%;
	display: flex;
	justify-content: center;
}

#tip-title {
	width: 700px;
	height: 40px;
	border: 1px #D8D8D8 solid;
	border-radius: 5px;
	margin: 0;
	padding: 0 10px;
	margin-bottom: 10px;
	font-family: 'Apple SD Gothic Neo';
	font-size: 14px;
}

#editor-box {
	width: 700px;
	height: 100%;
}

#btn-box {
	width: 100%;
	display: flex;
	justify-content: center;
}

#btn-box-center {
	width: 700px;
}

#cancel-btn {
	width: 160px;
	height: 40px;
	border-radius: 7px;
	border: 1px #D8D8D8 solid;
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}

#submit-btn {
	width: 160px;
	height: 40px;
	border-radius: 7px;
	background-color: #5882FA;
	color: white;
	float: right;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* 견적요청 바 css */
.scroll-cards {
	width: 300px;
	height: 800px;
	overflow: auto;
	/* 화면고정 */
	position: fixed;
	left: 50px;
	top: 40px;
	/* padding: 20px 0px 5px 20px; */
}

.card {
	background-color: #f2f3f7;
	border-radius: 4px;
	margin-top: 8px;
	margin-bottom: 5px;
	padding: 20px 0px 20px 0px;
	transition: 0.3s;
}

.card:hover {
	box-shadow: 5px 1px 20px 1px #ddd;
	transform: scale(0.96);
}

.mails {
	display: flex;
	align-items: center;
	/* justify-content: center; */
}

.mails>img {
	width: 35px;
	border-radius: 10px;
}

.mail-info {
	margin: 10px 65px;
	margin-left: 20px;
	line-height: 1.7;
	font-weight: 600;
}

.bottom-info {
	display: flex;
	justify-content: space-between;
}

/* test */
/* .test_div {
            display: flex;

        } */
p {
	margin: 0 0 10px;
}

.mail-names {
	color: grey;
	font-weight: bold;
	font-size: 15px;
	margin-left: 10px;
}
</style>
</head>

<body>
<%
int est_num = Integer.parseInt(request.getParameter("est_num"));
SendDAO sdao = new SendDAO();
SendDTO show_est = sdao.EstSend_nomalUser(est_num);
UserDAO udao = new UserDAO();
UserDTO customer_info = udao.userInfo(show_est.getUser_id());


%>




	<div id="test_div">
		<!-- 견적요청 바 시작-->
		<div class="scroll-cards">
			<!-- 사이드 1번째 박스 시작 -->
			<div class="card">
				<div class="mails">
					<img src="https://randomuser.me/api/portraits/men/20.jpg" />
					<div class="mail-names">
						<p><%=customer_info.getUser_name()%> 고객님의 견적요청</p>
					</div>
				</div>
				<div class="mail-info">
					<!-- 동남아여행 -->
				</div>
				<div></div>
				<div class="check1">
					<div class="bottom-info"></div>
					<div class="date"><%=show_est.getSend_wr_date() %></div>
				</div>
			</div>
			<!-- 사이드 1번째 박스 끝 -->

			<!-- 사이드 2번째 박스 시작 -->
			<div class="card">
				<div class="mails">
					<div class="mail-names">어디로가세요?</div>
				</div>
				<div class="mail-info"><%=show_est.getSend_country()%></div>
			</div>
			<!-- 사이드 2번째 박스 끝 -->

			<!-- 사이드 3번째 박스 시작 -->
			<div class="card">
				<div class="mails">
					<div class="mail-names">구체적인 목적지가 어디세요?</div>
				</div>
				<div class="mail-info"><%=show_est.getSend_place()%></div>
			</div>
			<!-- 사이드 3번째 박스 끝 -->

			<!-- 사이드 4번째 박스 시작 -->
			<div class="card">
				<div class="mails">
					<div class="mail-names">예산이 얼마나 되세요?</div>
				</div>
				<div class="mail-info"><%=show_est.getSend_budget()%></div>
			</div>
			<!-- 사이드 4번째 박스 끝 -->

			<!-- 사이드 5번째 박스 시작 -->
			<div class="card">
				<div class="mails">
					<div class="mail-names">언제 가세요?</div>
				</div>
				<div class="mail-info"><%=show_est.getSend_s_date()%>~<%=show_est.getSend_e_date()%></div>
			</div>
			<!-- 사이드 5번째 박스 끝 -->

			<!-- 사이드 6번째 박스 시작 -->
			<div class="card">
				<div class="mails">
					<div class="mail-names">고수에게 추가적인 요청사항이 있나요?</div>
				</div>
				<div class="mail-info"><%=show_est.getSend_content()%></div>
			</div>
			<!-- 사이드 6번째 박스 끝 -->
		</div>
		<!-- 견적요청 바 끝 -->
		<div class="editor-contents">
			<!-- <div id="tip-title-box">
            <input id="tip-title" placeholder="제목을 입력해 주세요">
        </div> -->
        
        
        <form action="EstimateWriteCon.do?est_num=<%=est_num%>" method="post">
			<!-- Editor -->
			<div id="editor-box">
				<textarea id="summernote" name="res_content"></textarea>
			</div>
			<div>
				컨설팅 비용 : <input type="number" name="res_fee">원
			</div>
			<!-- Submit -->
			<div id="btn-box">
				<div id="btn-box-center">
					<div id="cancel-btn">취소</div>
					<input type="submit" value="견적서 보내기" id="submit-btn">
				</div>
			</div>
			</form>

		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				placeholder : '내용을 작성하세요',
				height : 400,
				maxHeight : 400
			});
		});
	</script>

</body>

</html>