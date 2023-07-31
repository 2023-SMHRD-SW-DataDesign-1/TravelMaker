<%@page import="model.ConsultDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.UserDTO"%>
<%@page import="model.SendDTO"%>
<%@page import="model.SendDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ResDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 - 받은 컨설팅 조회 전</title>
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


	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->
	
	<div class="nav_under_img">
	<img src="img/배경5.png" alt="">
    </div>
	
	<%
	SendDAO sdao = new SendDAO();
	UserDTO udto = (UserDTO) session.getAttribute("info");
	String user_id = udto.getUser_id();
	ArrayList<SendDTO> consulted_list = sdao.consultedEst(user_id);	
	DecimalFormat df = new DecimalFormat("###,###");
	ConsultDAO cdao = new ConsultDAO();

	
	%>
	
	
	

	<div class="app-container">
		<div class="app-content">
			<div class="projects-section">
				<div class="projects-section-header">
					<h1>내가받은 요청</h1>
				</div>
				<div class="projects-section-line">
					<div class="projects-status">
						<div class="item-status">
							<span class="status-number">전체 컨설팅 <%=consulted_list.size() %></span> 
						</div>
					</div>
				</div>
				
				<!-- gosu-response 목록 시작 -->
				
				<%-- <h3 class="center">${response_list.send_country}</h3> --%>
				<div class="project-boxes jsGridView">
				<% for(int i = 0; i < consulted_list.size(); i++){%>
				
					<div class="project-box-wrapper">
						<div class="project-box" style="background-color: #fee4cb;">
							<div class="project-box-content-header">
								<p class="box-content-header"><%=consulted_list.get(i).getSend_country()%></p>
								
<%-- 								<%if (cdao.checkConsult(consulted_list.get(i).getEst_num()) > 0) {%>
								<span class="project-check"><img src="img/check.png">컨설팅 완료</span>
								<%}%>	 --%>
															
							</div>
							<div class="box-progress-wrapper">
								<p class="box-progress-header"><%=consulted_list.get(i).getSend_place()%></p>
								<p class="box-progress-header"><%=consulted_list.get(i).getSend_s_date()%>~<%=consulted_list.get(i).getSend_e_date()%></p>
								<p>여행 예산 :<%=df.format(consulted_list.get(i).getSend_budget())%>원</p>
								<div class="box-progress-bar">
									<!-- <span class="box-progress"
										style="width: 60%; background-color: #ff942e"></span> -->
								</div>
							</div>
							<div class="project-footer-box">
								<span><%=consulted_list.get(i).getSend_content()%></span>
								<div class="project-move-box">
									<span class="numbering">No.<%=consulted_list.get(i).getEst_num()%></span>
									<a href="User_Consult_Look.jsp?est_num=<%=consulted_list.get(i).getEst_num()%>">컨설팅 보러가기</a>
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
	
	

	
	<script src="js/Est_gosu_responseList.js"></script>
	

</body>
</html>