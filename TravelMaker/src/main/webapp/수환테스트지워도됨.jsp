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
	UserDTO udto = (UserDTO) session.getAttribute("info");
	SendDAO sdao = new SendDAO();
	int est_num = Integer.parseInt(request.getParameter("est_num"));
	SendDTO sdto = sdao.EstSend_nomalUser(est_num);
	ArrayList<ResDTO> rdto_list = rdao.nomal_responseList(est_num);
	DecimalFormat df = new DecimalFormat("###,###");
	%>
	
	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->

	<div class="wrapper">


		<!-- 보유금액 표시 -->
		<p>보유 마일리지 : <%=df.format(udto.getUser_cash())%>원</p>


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
		
		<div>
		<h3>받은 견적서</h3>
		</div>
		<!-- 해당 견적에 대해 고수들이 보낸 견적서 -->
		<%
		for (int i = 0; i < rdto_list.size(); i++) {
		%>
		<div class="send_gosu_content">

			<%-- <%=rdto_list.get(i).getEst_num()%> --%>
			견적서 변호 : <%=rdto_list.get(i).getRes_num()%> <br>
			견적서 작성자 ID : <%=rdto_list.get(i).getUser_id()%> <br>
			전적서 작성일자 : <%=rdto_list.get(i).getRes_wr_date()%> <br>
			견적서 내용 : <%=rdto_list.get(i).getRes_content()%> <br>
			컨설팅 비용 : <%=df.format(rdto_list.get(i).getRes_fee())%>원 <br>
			
			<!-- 채택 된 견적서일 경우 채택완료 표시 -->
			<%if(rdto_list.get(i).getPaid()==1){ %>
				<button disabled>채택완료</button>			
			<%}else{
				// 채택된 견적서 외의 견적서는 disabled 버튼 처리
				if(sdto.getChecked() == 1){%>			
				<button disabled>채택하기</button>
				<%}else{ %>
				<!-- 아직 견적서들이 채택되기 전이라면 채택메서드 실행 -->
				<button onclick="adoptEstimation(<%=sdto.getEst_num()%>, <%=rdto_list.get(i).getRes_num()%>)">채택하기</button>				
				<%} %>
			<%} %>
			
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
			                    if (response.status === "checked") {
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