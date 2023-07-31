<%@page import="model.UserDAO"%>
<%@page import="model.PortDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.PortDAO"%>
<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="css/정보거래_카테고리별.css">


<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/jquery.fancybox.min.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="css/daterangepicker.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/style.css">
<!-- main head end -->

<!-- =style 임시= -->
<style>
.untree_co-section>.container {
	margin-top: 94px;
}

.mypage_container2 {
	background: #fff;
	padding: 24px;
	border-radius: 13px;
	position: relative;
	margin: 0 12px;
	left: 40px;
}

.container3 {
	background: #fff;
	padding: 24px;
	border-radius: 13px;
	position: relative;
	margin: 0 12px;
	left: 20px;
}

/* .ctbtn {
         border: none;
         background-color: rgb(206, 230, 240);
         border-radius: 15px;
      } */
strong {
	font-size: large;
}

/* btn 테스트 */
.test_btn1 {
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	margin-right: -2px;
}

.test_btn2 {
	margin-left: -4px;
}

.test_btn3 {
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	margin-left: -6px;
}

.btn_group button {
	/* #5882FA; */
	border: 1px solid #5882FA;
	background-color: rgba(0, 0, 0, 0);
	color: #5882FA;
	padding: 4px;
}

.btn_group button:hover {
	color: white;
	background-color: #5882FA;
}

/* 모달 css start */
#popupBtn {
	font-weight: bold;
	border: none;
}

#modalWrap {
	position: fixed;
	z-index: 1;
	padding-top: 100px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
	display: none;
}

#modalBody {
	width: 400px;
	height: 400px;
	padding: 30px 30px;
	margin: 0 auto;
	/* border: 2px solid #777; */
	background-color: #fff;
	/* 테두리 */
	border: 5px solid;
	border-radius: 20px;
	border-image: linear-gradient(to right, #fbfcb9be, #ffcdf3aa, #65d3ffaa);
	border-image-slice: 1;
}

#closeBtn {
	float: right;
	font-weight: bold;
	color: #777;
	font-size: 25px;
	cursor: pointer;
}

.div_modal {
	width: 200px;
	height: 100px;
	font-size: 20px;
	position: relative;
	height: auto;
	margin: 20px;
}

.modal_btn {
	height: 50px;
	width: 100px;
	position: absolute;
	bottom: 0px;
	top: 269px;
	left: 230px;
}

/* 이미지 크기 지정 */
.profile-image {
	height: 200px;
	width: 200px;
	display: inline-block;
}

.profile-user-settings {
	display: inline-block;
}

.profile {
	justify-items: center;
}

#uploadedImage {
	height: 190px;
	width: 200px;
	margin: 15px auto;
	background-color: #e2e2e2;
}

.profile_test {
	/* 업로드된 사진 크기지정*/
	height: 200px;
	width: 200px;
	display: inline-block;
}

.upload_test {
	
}

.button_test {
	border: none;
	background-color: rgba(0, 0, 0, 0);
	color: #1a374d;
	padding: 4px;
}

.button_test2 {
	width: 200px;
	color: white;
	background-color: #8d8d8d;
	border: none;
	font-size: 14px;
}

.cash_input {
	border: none;
	border-radius: 15px;
	background: #4e73dde8;
	color: white;
	padding: 13px;
	font-weight: bold;
	/* box-shadow: 0px 5px 15px gray; */
	/* cursor: pointer; */
	font-size: 15px;
}

main {
	margin-top: 34px;
}
</style>
</head>
<%
String noti = (String) session.getAttribute("noti");
PortDAO pdao = new PortDAO();
%>

<!-- 알림 메시지가 존재할 경우 해당 알림을 표시 -->

<script>
	<%if (noti != null) {%>
		alert("<%=noti%>
	");
<%// 알림 메시지를 띄운 후에, notification 세션을 제거합니다.
session.removeAttribute("noti");%>
	
<%}%>
	
</script>
<body>

	<%
	UserDTO info = (UserDTO) session.getAttribute("info");
	// String user_id = info.getUser_id();
	String user_id = request.getParameter("user_id");
	UserDAO udao = new UserDAO();
	UserDTO user_info = udao.userInfo(user_id);
	String act_area = user_info.getAct_area();
	/* String user_id = "sori"; */
	String uploadSuccess = request.getParameter("upload_success");
	String deleteSuccess = request.getParameter("delete_success");
	System.out.println("받아온id : " + user_id);
	System.out.println("세션id : " + info.getUser_id());
	%>


	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->



	<!-- ct name start -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h1 class="section-title text-center">포트폴리오</h1>
				</div>
			</div>
			<!-- ct name end -->

			<!-- header start -->
			<div class="container3">
				<header>
					<div class="container">
						<!-- 사용자 프로필 사진이 있을 경우에만 사진을 보여줍니다 -->

						<div class="profile">
							<!-- 프로필 사진 부분 -->
							<div class="profile-image">
								<img class="profile_test" src="img/<%=user_info.getUser_pic()%>"
									alt="Profile Picture">


							</div>


							<div class="profile-user-settings">

								<h1 class="profile-user-name"><%=user_info.getUser_name()%></h1>
								<%
								if (user_id.equals(info.getUser_id())) {
								%>
								<span>현재금액 : <%=user_info.getUser_cash()%></span>
								<%}%>


								<div class="profile-bio">
									<p>
										<span class="profile-real-name">활동 지역 : <%=user_info.getAct_area()%></span>
									</p>
								</div>
								<%
								if (user_id.equals(info.getUser_id())) {
								%>
								<button onclick="goToPortfolioWrite()">포폴작성</button>
								<%}%>


							</div>

						</div>
					</div>
			</div>

			<%
			ArrayList<PortDTO> port_list = pdao.showPort(user_id);
			System.out.println(port_list.size());
			System.out.println("리스트 null확인" + port_list);
			%>




			<div>
				<div>
					<%
					if (port_list == null || port_list.isEmpty()) {
					%>
					<h1>작성된 포트폴리오가 없습니다.</h1>
					<%}else{%>
					<p>포폴 제목 :<%=port_list.get(0).getPort_title()%></p>
					<p>포폴 내용 :<%=port_list.get(0).getPort_content()%></p>
					<%} %>
				</div>
			</div>
			</header>
			<!-- header end -->


		</div>
	</div>

	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->

	<!-- partial -->
	<script src="js/script.js"></script>

	<!-- main script start -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/moment.min.js"></script>
	<script src="js/daterangepicker.js"></script>

	<script src="js/typed.js"></script>


	<script src="./js/custom.js"></script>
	<!-- main script end -->

	<!-- modal script start -->
	
<script>
function goToPortfolioWrite() {
  // 현재 페이지에서 포폴작성 페이지로 이동합니다.
  // 이동할 페이지 URL을 설정해줍니다.
  var portfolioWriteURL = "portfolio_write.jsp";

  // 이동할 페이지로 리다이렉트합니다.
  // window.location.href를 사용하여 페이지 이동을 수행합니다.
  window.location.href = portfolioWriteURL;
}
</script>

	
	
</body>
</html>