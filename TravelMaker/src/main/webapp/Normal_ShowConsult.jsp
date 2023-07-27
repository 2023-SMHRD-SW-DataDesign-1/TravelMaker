<%@page import="model.UserDTO"%>
<%@page import="model.SendDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ConsultDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>CodePen - Project Management Dashboard UI</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/res_est_2_2_master.css">

</head>

<body>
   <%
    	ConsultDAO cdao = new ConsultDAO();
        UserDTO udto = (UserDTO) session.getAttribute("info");
    	String user_id = udto.getUser_id();
    	ArrayList<SendDTO> esti_list = cdao.showEstimate(user_id);
    	System.out.println(esti_list.size());        
        %>
  <!-- partial:index.partial.html -->
  <div class="app-container">
    <div class="app-header">
      <div class="app-header-left">
        <!-- <span class="app-icon"></span> -->
        <!-- <p class="app-name">Portfolio</p> -->
        <div class="search-wrapper">
          <input class="search-input" type="text" placeholder="Search">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor"
            stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="feather feather-search"
            viewBox="0 0 24 24">
            <defs></defs>
            <circle cx="11" cy="11" r="8"></circle>
            <path d="M21 21l-4.35-4.35"></path>
          </svg>
        </div>
      </div>

      <button class="messages-btn">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
          stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
          class="feather feather-message-circle">
          <path
            d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z" />
        </svg>
      </button>
    </div>
    <div class="app-content">

      <div class="projects-section">
        <div class="projects-section-header">
          <p>받은 요청</p>
          <p class="time">23-07-24</p>
        </div>
        <div class="projects-section-line">
          <div class="projects-status">  
            <div class="item-status">
              <span class="status-number"><%= esti_list.size() %></span>
              <span class="status-type">받은 컨설팅</span>
            </div>            
          </div>

        </div>
        <div class="project-boxes jsGridView">
        
     
        
        
        <!-- 내가쓴 견적목록 시작 -->
        <%
        for(int i = 0; i < esti_list.size(); i++){
        %>
        
        
        
          <div class="project-box-wrapper">
            <div class="project-box" style="background-color: #fee4cb;">
              <div class="project-box-header">
                <span><%= esti_list.get(i).getSend_wr_date() %></span>
                <div class="more-wrapper">
                  <button class="project-btn-more">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                      stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                      class="feather feather-more-vertical">
                      <circle cx="12" cy="12" r="1" />
                      <circle cx="12" cy="5" r="1" />
                      <circle cx="12" cy="19" r="1" />
                    </svg>
                  </button>
                </div>
              </div>
              <div class="project-box-content-header">
                <p class="box-content-header"><%= esti_list.get(i).getSend_country() %> 여행</p>
             	<p class="box-content-subheader"><%= esti_list.get(i).getSend_place() %></p>
                <p class="box-content-subheader">이름들어올부분</p>
                
              </div>
              
              <!-- 남은기간 %표시 시작 -->
              
      <!--        <div class="box-progress-wrapper">
                <p class="box-progress-header">컨설팅 마감 기간</p>
                <div class="box-progress-bar">
                  <span class="box-progress" style="width: 60%; background-color: #ff942e"></span>
                </div>
                <p class="box-progress-percentage">100%</p>
              </div>  -->
              
              <!-- 남은기간 %표시 끝 -->
              
              <!-- footer 시작 -->
              
          <div class="project-box-footer">

                <div class="days-left" style="color: #ff942e;">
                  컨설팅 보러가기
                </div>
              </div> 
              
              <!-- footer 끝 -->
              
            </div>
          </div>
         
         
        <%
        }
        %>
        <!-- 내가쓴 견적목록 끝 --> 





        </div>
      </div>

    </div>
  </div>
  <!-- partial -->
  <script src="js/res_est_2_2_master.js"></script>

</body>

</html>