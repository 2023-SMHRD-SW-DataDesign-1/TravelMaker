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
<html>
<head>
<meta charset="UTF-8">
<title>받은 견적서 조회</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/tomik23/show-more@master/docs/show-more.css" />
<!-- res_est_1-2 link 시작 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css'>
<link rel="stylesheet" href="css/res_est_customer.css">
<!-- res_est_1-2 link 시작 -->

</head>



<body>
	


	<%
	ResDAO rdao = new ResDAO();

	SendDAO sdao = new SendDAO();
	int est_num = Integer.parseInt(request.getParameter("est_num"));
	SendDTO sdto = sdao.EstSend_nomalUser(est_num);
	ArrayList<ResDTO> rdto_list = rdao.nomal_responseList(est_num);
	%>
	
	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->

	<div class="wrapper">


		<!-- 일반유자가 요청한 본인의 견적에 대한 정보 -->

		<div class="left-wrap">
			<h3>나의 견적요청</h3>
			<ul>
				<li><%=sdto.getEst_num()%></li>
				<li><%=sdto.getSend_wr_date()%></li>
				<li><%=sdto.getSend_country()%></li>
				<li><%=sdto.getSend_content()%></li>
				<li><%=sdto.getSend_s_date()%> ~ <%=sdto.getSend_e_date()%></li>
				<li><%=sdto.getSend_budget()%></li>
			</ul>
		</div>

		<%
		for (int i = 0; i < rdto_list.size(); i++) {
		%>
		<div class="send_gosu_content">

			<%=rdto_list.get(i).getEst_num()%>
			<%=rdto_list.get(i).getUser_id()%>
			<%=rdto_list.get(i).getRes_wr_date()%>
			<%=rdto_list.get(i).getRes_content()%>
			<%=rdto_list.get(i).getRes_fee()%>


		</div>


		<%
		}
		%>

	</div>

	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
	

</body>
</html>