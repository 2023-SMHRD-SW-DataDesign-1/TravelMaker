<%@page import="model.UserDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.ResDTO"%>
<%@page import="model.UserDTO"%>
<%@page import="model.SendDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ResDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고수-받은견적</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/Est_gosu_responseList.css">
<style type="text/css">
.wrap {
	padding: 20px;
	background-color: black;
	color: white;
	margin-top: 100px;
}

.list_box {
	width: 400px;
	border-radius: 30px;
	background-color: gray;
	padding: 20px;
	color: #eeeeee;
	display: inline-block;
}

.list_box p {
	color: white;
}

.list_box ul {
	list-style: none;
}

.list_box li {
	font-size: 16px;
	font-weight: bold;
	margin: 10px;
}

.nav_under_img img{
	width: 100%;
	height: 115px;
	position: absolute;
}

</style>
</head>
<body>

	<!-- 작성완료 알림문 시작 -->
	<%
	String noti = (String) session.getAttribute("noti");
	%>
	<script>
		<%if (noti != null){ %>
		alert("<%=noti%>");
		<%
		session.removeAttribute("noti");
		}%>
	</script>
	<!-- 작성완료 알림문 끝 -->

	
	<%
	UserDTO info = (UserDTO) session.getAttribute("info");
	String user_id = info.getUser_id();
	ResDAO rdao = new ResDAO();
	
	ArrayList<SendDTO> est_list = rdao.gosu_responseList(user_id);
	DecimalFormat df = new DecimalFormat("###,###"); 
	UserDAO udao = new UserDAO();
	
	
	%>

	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->
	
	<div class="nav_under_img">
	<img src="img/배경2.png" alt="">
    </div>
	

	<div class="app-container">
		<div class="app-content">
			<div class="projects-section">
				<div class="projects-section-header">
					<p><%=info.getAct_area()%>여행 견적</p>
					<p class="time"></p>
				</div>
				<div class="projects-section-line">
					<div class="projects-status">
						<div class="item-status">
							<span class="status-number">받은 견적 <%=est_list.size() %></span> 
						</div>
					</div>
				</div>
				
				<!-- gosu-response 목록 시작 -->
				
				<div class="project-boxes jsGridView">
				
				<%for(int i = 0; i < est_list.size(); i++){ %>
					<div class="project-box-wrapper">
						<div class="project-box" style="background-color: #fee4cb;">
							<div class="project-box-content-header">
								<span class="box-content-num">견적서 No.<%=est_list.get(i).getEst_num()%></span>
								<p class="box-content-header"><%=est_list.get(i).getSend_place()%></p>
								<%UserDTO show_name = udao.showName(est_list.get(i).getEst_num()); %>
								<p class="box-content-subheader"><%=show_name.getUser_name()%></p>
							</div>
							<div class="box-progress-wrapper">
								<p class="box-progress-header"><%=est_list.get(i).getSend_s_date()%>~<%=est_list.get(i).getSend_e_date()%></p>
								<div class="box-progress-bar">
									<!-- <span class="box-progress"
										style="width: 60%; background-color: #ff942e"></span> -->
								</div>
							</div>
							<div class="project-footer-box">
								<span><%=est_list.get(i).getSend_content()%></span>
								<div class="project-move-box">
									<p>요청금액 <%=df.format(est_list.get(i).getSend_budget())%></p>

									<%
									int row = rdao.checkWrite(new SendDTO(est_list.get(i).getEst_num(), user_id));
									if (row > 0){
									%>
									<a href="">작성완료</a>
									<%
									}else{
									%>
									<a href="Gosu_Est_Write.jsp?est_num=<%=est_list.get(i).getEst_num()%>">견적서 작성</a>
									<%} %>
								</div>
							</div>
						</div>
					</div>
				<%} %>
					<!-- gosu-response 목록 끝 -->
					
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
	
	
	<script>
	
	date = new Date();
	year = date.getFullYear();
	month = date.getMonth() + 1;
	day = date.getDate();
	document.getElementsByClassName("time").innerHTML = year + "." + month + "." + day;
	</script>
	
	<script src="js/Est_gosu_responseList.js"></script>
	

</body>
</html>