<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <!-- include libraries(jQuery, bootstrap) -->
   <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
   <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <!-- include summernote css/js -->
   <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
   <link rel="stylesheet" href="css/main_nav.css">
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/style.css">
   <style>
      /* @import "//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css"; */
      .editor-contents {
         padding-bottom: 50px;
         width: 100%;
         display: flex;
         align-items: center;
         justify-content: center;
         flex-direction: row;
         flex-wrap: wrap;
      }

      #tip-title-box {
         width: 100%;
         display: flex;
         justify-content: center;
      }

      #tip-title {
         width: 600px;
         height: 40px;
         border: 1px #D8D8D8 solid;
         border-radius: 5px;
         margin: 0;
         padding: 0 10px;
         margin-bottom: 10px;
         font-family: 'Apple SD Gothic Neo';
         font-size: 14px;
      }

      #editor-box {
         width: 600px;
         height: 100%;
      }

      #btn-box {
         width: 100%;
         display: flex;
         justify-content: center;
      }

      #btn-box-center {
         width: 600px;
      }

      #cancel-btn {
         width: 160px;
         height: 40px;
         border-radius: 7px;
         border: 1px #D8D8D8 solid;
         float: left;
         display: flex;
         justify-content: center;
         align-items: center;
      }

      #submit-btn {
         width: 160px;
         height: 40px;
         border-radius: 7px;
         background-color: #5882FA;
         color: white;
         float: right;
         display: flex;
         justify-content: center;
         align-items: center;
         border: none;
      }

      .div_title {
            text-align: center;
			margin-top: 94px;
            width: 100%;
            height: 100px;

        }
	        
	   @media screen and (min-width: 576px){
	      .container_nav{
	         max-width: 540px;
	         margin: 0 auto;
	      }
	   }
	   @media screen and (min-width: 768px){
	      .container_nav{
	         max-width: 720px;
	         margin: 0 auto;
	      }
	   }
	   @media screen and (min-width: 992px){
	      .container_nav{
	         max-width: 960px;
	         margin: 0 auto;
	      }
	   }
	   @media screen and (min-width: 1200px){
	      .container_nav{
	         max-width: 1140px;
	         margin: 0 auto;
	      }
	   }
   </style>
</head>

<body>
	<!-- 네비게이션 시작 -->
	<div class="hero-anime">
	   <div class="navigation-wrap bg-light start-header start-style">
	      <div class="container_nav">
	         <div class="row">
	            <div class="col-12">
	               <nav class="main_navbar navbar-expand-md navbar-light">
	
	                  <a class="navbar_logo" href="Main.jsp" target="_blank"> <img src="/TravelMaker/img/Logo.png"
	                     alt="Logo"></a>
	
	                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	                     <ul class="navbar-nav ml-auto py-4 py-md-0">
	
	                        <c:choose>
	                           <c:when
	                              test="${info.user_type eq '회원' || info.user_type == null }">
	                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
	                                 class="nav-link" href="User_Est_Send.jsp">견적요청</a></li>
	                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active"><a
	                                 class="nav-link dropdown-toggle" data-toggle="dropdown"
	                                 href="#" role="button" aria-haspopup="true"
	                                 aria-expanded="false">컨설팅</a>
	                                 <div class="dropdown-menu">
	                                    <a class="dropdown-item" href="User_Est_Receive.jsp">받은견적서</a>
	                                    <a class="dropdown-item" href="User_Consult_Receive.jsp">받은컨설팅</a>
	                                 </div></li>                       
	                           </c:when>
	                           <c:when test="${info.user_type eq '고수' }">
	                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
	                                 class="nav-link" href="Gosu_Est_Receive.jsp">받은견적</a></li>
	                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
	                                 class="nav-link" href="Gosu_Est_Paid.jsp">채택된견적</a></li>
	                           </c:when>
	                        </c:choose>
	
	
	                        <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
	                           class="nav-link" href="Info_main.jsp">정보거래</a></li>
	
	                        <!-- <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
	                           class="nav-link" href="Est_ShowConsult.jsp">커뮤니티</a></li> -->
	
	                        <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
	                                 class="nav-link" href="MyPage_normal.jsp">마이페이지</a></li>
	                                 
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
	</div>
	<!-- 네비게이션 끝 -->


	<div class="div_title">
		<h1 style="padding: 30px 0;">포트폴리오 작성</h1>
	</div>

	<form action="PortCon.do" method="post">
		<div class="editor-contents">
			<div id="tip-title-box">
				<input id="tip-title" name="port_title" placeholder="제목을 입력해 주세요">
			</div>
			<!-- Editor -->
			<div id="editor-box">
				<textarea id="summernote" name="port_content"></textarea>
			</div>
			<!-- Submit -->
			<div id="btn-box">
				<div id="btn-box-center">
					<a href="portfolio_list.jsp" id="cancel-btn">취소</a>
					<button id="submit-btn" type="submit">등록</button>
				</div>
			</div>
		</div>
	</form>


	<script>
		// 메인화면 페이지 로드 함수
		$(document).ready(function() {
			$('#summernote').summernote({
				placeholder : '내용을 작성하세요',
				height : 400,
				width : 600
			});
		});

	</script>
      
      
	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
</body>
</html>