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
    <link rel="stylesheet" href="css/User_Est_Look.css">
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
	%>

    <div class="app-container">
        <div class="app-content">
            <div class="projects-section">
                <div class="projects-section-header">
                    <p>채택된 견적</p>

                </div>
                <div class="projects-section-line">
                    <div class="projects-status">
                        <div class="item-status">
                            <span class="status-number">3</span>
                            <span class="status-type">전체 견적요청</span>
                        </div>
                        <div class="item-status">
                            <span class="status-number">2</span>
                            <span class="status-type">현재 견적요청</span>
                        </div>
                        <div class="item-status">
                            <span class="status-number">1</span>
                            <span class="status-type">지난 견적요청</span>
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
                                <span><%=Unpaid_list.get(i).getRes_wr_date() %></span>
                                <div class="more-wrapper">
                                    <button class="project-btn-more">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round"
                                            class="feather feather-more-vertical">
                                            <circle cx="12" cy="12" r="1" />
                                            <circle cx="12" cy="5" r="1" />
                                            <circle cx="12" cy="19" r="1" />
                                        </svg>
                                    </button>
                                </div>
                            </div>
                            <div class="project-box-content-header">
                               견적서No.<%=Unpaid_list.get(i).getEst_num() %>
                                <p class="box-content-header"><%=Unpaid_list.get(i).getRes_place() %></p>
                                <p class="box-content-subheader">최수환</p>
                            </div>
                            <div class="project-box-footer">
                                <button class="selection" style="color: rgb(125, 115, 115);">아직 채택 안됨</button>
                            </div>
                        </div>
                    </div>
                    	<%
						}
						%>
				</div>

					<h3 class="center" style="font-weight: 900;">채택 된 견적</h3>
					 <div class="project-boxes jsGridView">
                    <!-- 채택된 견적 -->
                    <div class="project-box-wrapper">
                        <div class="project-box" style="background-color: #d7f1fb;">
                            <div class="project-box-header">
                                <span>23-07-20</span>
                                <div class="more-wrapper">
                                    <button class="project-btn-more">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round"
                                            class="feather feather-more-vertical">
                                            <circle cx="12" cy="12" r="1" />
                                            <circle cx="12" cy="5" r="1" />
                                            <circle cx="12" cy="19" r="1" />
                                        </svg>
                                    </button>
                                </div>
                            </div>
                            <div class="project-box-content-header">
                                <p class="box-content-header">일본</p>
                                <p class="box-content-subheader">박소리</p>
                            </div>
                            <div class="box-progress-wrapper">
                                <p class="box-progress-header">컨설팅 마감 기간</p>
                                <div class="box-progress-bar">
                                    <span class="box-progress" style="width: 70%; background-color: #2a5a91"></span>
                                </div>
                                <p class="box-progress-percentage">70%</p>
                            </div>
                            <div class="project-box-footer">
                                <div class="participants">
                                    <img src="https://images.unsplash.com/photo-1596815064285-45ed8a9c0463?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1215&q=80"
                                        alt="participant">
                                    <img src="https://images.unsplash.com/photo-1583195764036-6dc248ac07d9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2555&q=80"
                                        alt="participant">
                                    <button class="add-participant" style="color: #ff942e;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3"
                                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus">
                                            <path d="M12 5v14M5 12h14" />
                                        </svg>
                                    </button>
                                </div>
                                <div class="days-left" style="color: #3c618c;">
                                    5 Days Left
                                </div>
                                <button class="selection" style="color: #2a5a91;">컨설팅완료</button>
                            </div>
                        </div>
                    </div>
					</div>
             



            </div>
        </div>
    </div>

    <!-- partial -->
    <script src="js/User_Est_Look.js"></script>

</body>

</html>