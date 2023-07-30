<%@page import="java.text.DecimalFormat"%>
<%@page import="model.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ResDTO"%>
<%@page import="model.SendDTO"%>
<%@page import="model.ResDAO"%>
<%@page import="model.SendDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>CodePen - Project Management Dashboard UI</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/User_Est_Look.css">
<!-- 팝업창 링크 시작 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<!-- 팝업창 링크 끝 -->
</head>

<body>

	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->


	<%
	ResDAO rdao = new ResDAO();
	UserDTO udto = (UserDTO) session.getAttribute("info");
	SendDAO sdao = new SendDAO();
	int est_num = Integer.parseInt(request.getParameter("est_num"));
	SendDTO sdto = sdao.EstSend_nomalUser(est_num);
	ArrayList<ResDTO> rdto_list = rdao.nomal_responseList(est_num);
	DecimalFormat df = new DecimalFormat("###,###");
	%>

	<div class="app-container">
		<div class="app-content">
			<div class="projects-section">
				<div class="projects-section-header">
					<p>받은 견적서</p>

					<!-- 팝업버튼 시작 -->
					<div class="container2">
						<a class="popupbutton" href="#popup">나의 견적요청</a>
						<div class="popup" id="popup">
							<div class="popup-inner">
								<div class="popup__photo">
									<img src="https://www.10wallpaper.com/wallpaper/1366x768/1411/Eiffel_Tower_Paris_Night-Photography_HD_Wallpapers_1366x768.jpg"
										alt="">
								</div>
								<div class="popup__text">
									<h1>나의 견적 요청</h1>
									<p><%=sdto.getSend_country()%></p>
									<p><%=sdto.getSend_place()%></p>
									<p><%=sdto.getSend_budget()%></p>
									<p><%=sdto.getSend_s_date()%>
										~
										<%=sdto.getSend_e_date()%></p>
									<p><%=sdto.getSend_content()%></p>
								</div>
								<a class="popup__close" href="#">X</a>
							</div>
						</div>
					</div>
					<!-- 팝업버튼 끝 -->

				</div>
				<div class="projects-section-line">
					<div class="projects-status">
						<div class="item-status">
							<span class="status-number">전체 컨설팅 3</span> <span
								class="status-number">보유 마일리지 : <%=df.format(udto.getUser_cash())%>원
							</span>
						</div>
					</div>
				</div>

				<h3 class="center" style="font-weight: 900;">동남아여행</h3>
				<!-- 동남아여행 받은 요청들 시작 -->
				<div class="project-boxes jsGridView">


					<%
					for (int i = 0; i < rdto_list.size(); i++) {
					%>

					<div class="project-box-wrapper">
						<div class="project-box" style="background-color: #fee4cb;">
							<div class="project-box-content-header">
								<div class="project-box-header">
									<p><%=rdto_list.get(i).getRes_wr_date()%></p>
									<p class="box-content-header"><%=rdto_list.get(i).getRes_num()%></p>
								</div>
								<div class="box-progress-bar">
									<!-- <span class="box-progress"
										style="width: 60%; background-color: #ff942e"></span> -->
								</div>
								<div class="project-box-content">
									<span class="box-content-id"><%=rdto_list.get(i).getUser_id()%></span>
									<p class="box-content-subheader"><%=rdto_list.get(i).getRes_content()%></p>
								</div>
									<p class="box-content-fee"><%=df.format(rdto_list.get(i).getRes_fee())%>원</p>
								</div>
								<!-- 채택 된 견적서 일 경우 채택 완료 표시 -->

								<div class="project-box-footer">
									<%
									if (rdto_list.get(i).getPaid() == 1) {
									%>
									<button class="port_button">판매자 포트폴리오</button>
									<button class="accept_button" disabled>채택완료</button>
									<%
									} else {
									// 채택된 견적서 외의 견적서는 disabled 버튼 처리
									if (sdto.getChecked() == 1) {
									%>
									<button class="port_button">판매자 포트폴리오</button>
									<button class="accept_button" disabled>채택하기</button>
									<%
									} else {
									%>
									<!-- 아직 견적서들이 채택되기 전이라면 채택메서드 실행 -->
									<button class="port_button">판매자 포트폴리오</button>
									<button class="accept_button" 
										onclick="adoptEstimation(<%=sdto.getEst_num()%>, <%=rdto_list.get(i).getRes_num()%>)">채택하기</button>
									<%
									}
									%>
									<%
									}
									%>
								</div>
						</div>
					</div>

					<!-- 채택 스크립트 -->
					<script>
			    function adoptEstimation(est_num, res_num) {
			        var confirmed = confirm("정말 채택하시겠습니까?");
			        if (confirmed) {
			            $.ajax({
			                type: "POST",
			                url: "PaidEstCon",
			                data: { est_num: est_num, res_num: res_num },
			                dataType: "json",
			                xhrFields: {
			                    withCredentials: true // 세션 쿠키를 전송하도록 설정
			                },
			                success: function(response) {
			                	
			                	if (response.paid === "false") {
			                		alert("금액이 부족합니다.");
			                	}else if (response.status === "checked") {
			                        alert("채택되었습니다.");
			                        // 채택 성공 후 페이지 새로 고침
			                        location.reload();
			                    } else {
			                        // 채택이 성공하지 않았을 때 처리할 내용
			                    }
			                },
			                error: function(xhr, status, error) {
			                    console.error("AJAX 요청 중 오류가 발생했습니다:", error);
			                }
			            });
			        }
			    }
			</script>

					<%
					}
					%>
				</div>

			</div>
		</div>
	</div>





	<!-- partial -->
	<script src="js/User_Est_Look.js"></script>

	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
</body>

</html>