<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nav</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<!-- 네비 bar 수정본 link 시작 -->
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel="stylesheet" href="css/main_nav_correction.css">
<!-- 네비 bar 수정본 link 끝 -->
</head>
<body class="hero-anime">
	<div class="navigation-wrap bg-light start-header start-style">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-md navbar-light">

						<a class="navbar-brand" href="https://front.codes/"
							target="_blank"> <img src="/TravelMaker/img/Logo.png"
							alt="Logo"></a>

						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto py-4 py-md-0">

								<c:choose>
									<c:when
										test="${info.user_type eq '회원' || info.user_type == null }">
										<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
											class="nav-link" href="Est_send.jsp">견적요청</a></li>
										<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active"><a
											class="nav-link dropdown-toggle" data-toggle="dropdown"
											href="#" role="button" aria-haspopup="true"
											aria-expanded="false">컨설팅</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="Est_nomal_response.jsp">받은견적서</a>
												<a class="dropdown-item" href="Est_ShowConsult.jsp">받은컨설팅</a>
											</div></li>
									</c:when>
									<c:when test="${info.user_type eq '고수' }">
										<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
											class="nav-link" href="Est_gosu_responseList.jsp">받은견적</a></li>
										<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
											class="nav-link" href="#">채택된견적</a></li>
									</c:when>
								</c:choose>


								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
									class="nav-link" href="#">정보거래</a></li>

								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
									class="nav-link" href="#">커뮤니티</a></li>

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

   <script src="js/custom.js"></script>
   
   <!-- 메인 네비 수정본 script 시작 -->
   <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
   <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>
   <script src="/TravelMaker/js/main_nav_correction.js"></script>
   <!-- 메인 네비 수정본 script 끝 -->
</body>
</html>