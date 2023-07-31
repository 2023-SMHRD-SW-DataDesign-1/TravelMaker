<%@page import="java.text.DecimalFormat"%>
<%@page import="model.UserDTO"%>
<%@page import="model.ResDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ResDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>고수 - 채택 된 견적</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="css/User_Est_Look_ver2.css">
    <!-- 팝업창 링크 시작 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <!-- 팝업창 링크 끝 -->
</head>

<body>
	<%
	UserDTO udto = (UserDTO) session.getAttribute("info");
	
	String user_id = udto.getUser_id();
	System.out.println(user_id);
	ResDAO rdao = new ResDAO();
	ArrayList<ResDTO> paid_list = rdao.showPaidlist(user_id);
	ArrayList<ResDTO> Unpaid_list = rdao.showUnPaidlist(user_id);
	System.out.println(paid_list.size());
	DecimalFormat df = new DecimalFormat("###,###"); 
	%>

	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->
	
	
    <div class="app-container">
        <div class="app-content">
            <div class="projects-section">
                <div class="projects-section-header">
                    <p>채택된 견적</p>

                </div>
                <div class="projects-section-line">
                    <div class="projects-status">
                        <div class="item-status">
                            <span class="status-type">전체 견적서</span>
                            <span class="status-number"><%=paid_list.size()+Unpaid_list.size() %></span>
                        </div>
                        <div class="item-status">
                            <span class="status-type">채택되지 않은 견적서</span>
                            <span class="status-number"><%=Unpaid_list.size()%></span>
                        </div>
                        <div class="item-status">
                            <span class="status-type">채택된 견적서</span>
                            <span class="status-number"><%=paid_list.size()%></span>
                        </div>
                    </div>
                </div>

                <h3 class="center" style="font-weight: 900;">채택되지 않은 견적</h3>
                <!-- 동남아여행 받은 요청들 시작 -->
                <div class="project-boxes jsGridView">
                
                <!-- 채택 안된 견적 반복 시작 -->
                <%
				for (int i = 0; i < Unpaid_list.size(); i++) {
				%>	

                    <!-- 채택안된 견적 -->
                    <div class="project-box-wrapper">
                        <div class="project-box" style="background-color: #dadada;">
                            <!-- #fee4cb -->
                            <div class="project-box-header">
                                <span><%=Unpaid_list.get(i).getRes_wr_date()%></span>
                                <span>견적서No.<%=Unpaid_list.get(i).getEst_num() %></span>
                            </div>
                            <div class="project-box-content-header">
                                <p class="box-content-header"><%=Unpaid_list.get(i).getRes_place()%></p>
                                <p class="box-content-subheader">컨설팅 비용 : <%=df.format(Unpaid_list.get(i).getRes_fee())%>원</p>
                            </div>
                            <div class="project-box-footer">
                                <button class="selection" style="color: rgb(125, 115, 115);">아직 채택 안됨</button>
                            </div>
                        </div>
                    </div>
                    <%}%>
				</div>

					<h3 class="center" style="font-weight: 900;">채택 된 견적</h3>
					 <div class="project-boxes jsGridView">
					 
					<%
					for (int i = 0; i < paid_list.size(); i++) {
					%>	
                    <!-- 채택된 견적 -->
                    <div class="project-box-wrapper">
                        <div class="project-box" style="background-color: #d7f1fb;">
                            <div class="project-box-header">
                                <span><%=paid_list.get(i).getRes_wr_date()%></span>
                                <span>견적서No.<%=paid_list.get(i).getEst_num() %></span>
                            </div>
                            <div class="project-box-content-header">
                                <p class="box-content-header"><%=paid_list.get(i).getRes_place()%></p>
                                <p class="box-content-subheader">컨설팅 비용 : <%=df.format(Unpaid_list.get(i).getRes_fee())%>원</p>
                            </div>
                            <div class="project-box-footer">
                                <button class="selection" style="color: #2a5a91;">채택 완료</button>
                                <button id="moveButton" class="selection" style="color: #2a5a91;">컨설팅 작성하기</button>
                                
                  
                               <!-- 버튼 스크립트 -->
								<script>
								    document.addEventListener('DOMContentLoaded', function() {
								        const moveButton = document.getElementById('moveButton');
								        moveButton.addEventListener('click', function() {
								            window.location.href = 'Gosu_Est_Consult.jsp?res_num=<%=paid_list.get(i).getRes_num()%>&est_num=<%=paid_list.get(i).getEst_num()%>';
								        });
								    });
								</script>
                                
                            </div>
                        </div>
                    </div>
                    <%}%>
				</div>
             



            </div>
        </div>
    </div>

	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
	


    <!-- partial -->
    <script src="js/User_Est_Look.js"></script>

</body>

</html>