
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
<title>고수 - 최종견적 작성</title>
<link rel="stylesheet" href="css/main_nav.css">
<link rel="stylesheet" href="css/style.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<!-- include libraries(jQuery, bootstrap) -->

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
	width: 65%;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: row;
	flex-wrap: wrap;
}
#test_div{
	width: 1140px;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
	margin-top: 94px;
	margin-bottom: 50px;
}
.price_box > span{
	display: block;
	text-align: right;
	font-size: 16px;
	font-weight: bold;
	padding: 15px;
}
.price_box > span > input{
	margin-left: 8px;
	border: none;
	border-bottom: 2px solid black;
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
	font-weight: bold;
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
	font-weight: bold;
	border: none;
}

/* 견적요청 바 css */
.scroll-cards {
	width: 30%;
	height: 800px;
	overflow: auto;
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

p {
	margin: 0 0 10px;
}

.mail-names {
	color: grey;
	font-weight: bold;
	font-size: 15px;
	margin-left: 10px;
}

/* 네비게이션 시작  */
.navbar-nav>li a{
	font-size: 14px;
}
   @media screen and (min-width: 576px){
      .container_nav{
         max-width: 540px;
         margin: 0 auto;
      }
   }
   @media screen and (min-width: 768px){
      .container_nav{
         max-width: 720px;
         margin: 0 auto;
      }
   }
   @media screen and (min-width: 992px){
      .container_nav{
         max-width: 960px;
         margin: 0 auto;
      }
   }
   @media screen and (min-width: 1200px){
      .container_nav{
         max-width: 1140px;
         margin: 0 auto;
      }
   }
  /* 네비게이션 끝 */
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

<!-- 네비게이션 시작 -->

<div class="hero-anime">
   <div class="navigation-wrap bg-light start-header start-style">
      <div class="container_nav">
         <div class="row">
            <div class="col-12">
               <nav class="main_navbar navbar-expand-md navbar-light">

                  <a class="navbar_logo" href="Main.jsp" target="_blank"> <img src="/TravelMaker/img/Logo.png"
                     alt="Logo"></a>

                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav ml-auto py-4 py-md-0">

                        <c:choose>
                           <c:when
                              test="${info.user_type eq '회원' || info.user_type == null }">
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="User_Est_Send.jsp">견적요청</a></li>
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active"><a
                                 class="nav-link dropdown-toggle" data-toggle="dropdown"
                                 href="#" role="button" aria-haspopup="true"
                                 aria-expanded="false">컨설팅</a>
                                 <div class="dropdown-menu">
                                    <a class="dropdown-item" href="User_Est_Receive.jsp">받은견적서</a>
                                    <a class="dropdown-item" href="User_Consult_Receive.jsp">받은컨설팅</a>
                                 </div></li>                       
                           </c:when>
                           <c:when test="${info.user_type eq '고수' }">
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="Gosu_Est_Receive.jsp">받은견적</a></li>
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="Gosu_Est_Paid.jsp">채택된견적</a></li>
                           </c:when>
                        </c:choose>


                        <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                           class="nav-link" href="Info_main.jsp">정보거래</a></li>

                        <!-- <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                           class="nav-link" href="Est_ShowConsult.jsp">커뮤니티</a></li> -->

                        <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="MyPage_normal.jsp">마이페이지</a></li>
                                 
                        <c:choose>
                           <c:when test="${info != null }">
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="LogoutCon.do">${info.user_name}
                                    ${info.user_type}님 로그아웃</a></li>
                           </c:when>
                           <c:otherwise>
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="Login.jsp">로그인 / 회원가입</a></li>
                           </c:otherwise>
                        </c:choose>

                     </ul>
                  </div>

               </nav>
            </div>
         </div>
      </div>
   </div>
</div>

<!-- 네비게이션 끝 -->

	<div id="test_div">
		<!-- 견적요청 바 시작-->
		<div class="scroll-cards">
			<!-- 사이드 1번째 박스 시작 -->
			<div class="card">
				<div class="mails">
					<div class="mail-names">
						<p><%=customer_info.getUser_name()%> 고객님의 견적요청</p>
					</div>
				</div>
				<div class="check1">
					<div class="bottom-info"></div>
					<div class="mail-info"><%=show_est.getSend_wr_date() %></div>
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
			<div id="tip-title-box">
            <input id="tip-title" placeholder="제목을 입력해 주세요">
        </div>
        
        
        <form action="EstimateWriteCon.do?est_num=<%=est_num%>" method="post">
			<!-- Editor -->
			<div id="editor-box">
				<textarea id="summernote" name="res_content"></textarea>
			</div>
			<div class="price_box">
				<span>컨설팅 비용 <input type="number" name="res_fee"></span>
			</div>
			<!-- Submit -->
			<div id="btn-box">
				<div id="btn-box-center">
					<a href="Gosu_Est_Receive.jsp" id="cancel-btn">취소</a>
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

	
	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
	
</body>

</html>