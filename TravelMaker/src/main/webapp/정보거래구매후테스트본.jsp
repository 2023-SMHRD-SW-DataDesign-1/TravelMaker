<%@page import="model.SendDTO"%>
<%@page import="model.SendDAO"%>
<%@page import="model.UserDTO"%>
<%@page import="model.UserDAO"%>
<%@page import="model.InfoDTO"%>
<%@page import="model.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>정보거래</title>
    <link rel="stylesheet" href="css/show_detail_info.css">
    <!-- 지도 관련 link 시작 -->
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script async
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVZvJsIiCZbQU6t85J6Rm1oBHHtRh_5d8&libraries=places&callback=initMap">
        </script>

    <!-- 지도 관련 link 끝 -->

    <!-- 메인 하단 정보 link 시작 -->

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Untree.co">
    <link rel="shortcut icon" href="favicon.png">

    <meta name="description" content="" />
    <meta name="keywords" content="bootstrap, bootstrap4" />

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
        rel="stylesheet">

	<link rel="stylesheet" href="css/main_nav.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/daterangepicker.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- 메인 하단 정보 link 끝 -->

    <!-- 지도 관련 style1 시작 -->
    <style>
    .info-wrap-content{
    	display: flex;
    	justify-content: space-between;
    	max-width: 1140px;
    	margin: 0 auto;
    	margin-top: 94px;
    	margin-bottom: 50px;
    	
    }
        h1 {
            text-align: center;
        }

        .input_3 {
            /* 전송버튼 */
            height: 55px;
            border-top: none;
            border-left: none;
            border-right: none;
            border-bottom: 3px solid black;
            padding: 10px 30px;
        }

        .div_2 {
            /* 오른쪽하단 고정 */
            position: absolute;
            right: 20px;
            /* margin-left: 1500px; */
        }

        .price-tag {
            background-color: #4285F4;
            border-radius: 8px;
            color: #FFFFFF;
            font-size: 14px;
            padding: 10px 15px;
            position: relative;
        }

        .price-tag::after {
            content: "";
            position: absolute;
            left: 50%;
            top: 100%;
            transform: translate(-50%, 0);
            width: 0;
            height: 0;
            border-left: 8px solid transparent;
            border-right: 8px solid transparent;
            border-top: 8px solid #4285F4;
        }

        [class$=api-load-alpha-banner] {
            display: none;
        }

    <!-- 지도 관련 style1 끝  -->
    <!-- 지도 관련 style2 시작 -->

        /*    */
        .editor-contents {
            height: 800px;
            padding-bottom: 50px;
            /* margin-top: 50px; */
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
            width: 700px;
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
            width: 800px;
            height: 100%;
            display: inline-block
        }

        #btn-box-center {
            width: 800px;
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
        }

        #map {
            /* top: 100px; */
            height: 300px;
            width: 800px;
            /* 지도랑 나란히 정렬 */
            display: inline-block
        }

        #search-location {
            width: 170px;
            height: 40px;
            font-size: 14px;
            border: 1px solid #535353;
            background-color: rgb(230, 230, 230);
        }

        #btn_group {
            /* text-align: center;
         display: inline-block; */
            display: flex;
            justify-content: center;
        }

        /*  */
        #test_btn1 {
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            margin-right: 0px;
        }

        #test_btn2 {
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            margin-left: -1px;
        }

        #btn_group button {
            /* #5882FA; */
            border: 1px solid #5882FA;
            background-color: rgba(0, 0, 0, 0);
            color: #5882FA;
            padding: 5px;
        }

        #btn_group button:hover {
            color: white;
            background-color: #5882FA;
        }


    <!-- 지도관련 style2 끝 -->

        #wrap_boxContent {
            width: 1200px;
            background-color: gray;
        }





        /* 견적요청 바 css */

        .scroll-cards {
            width: 30%;
            overflow: auto;

            /* padding: 20px 0px 5px 20px; */
        }

        .card {
            background-color: #00000008;
            border-radius: 4px;
            margin-top: 8px;
            margin-bottom: 5px;
            padding: 20px 0px 20px 0px;
            transition: 0.3s;
        }

        .card:hover {
            box-shadow: 5px 1px 20px 1px #ddd;
            transform: scale(0.96);
        }

        .mails {
            display: flex;
            flex-direction: column-reverse;
            align-items: center;
        }

        .mails>img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
        }

        .mail-info {
            margin: 10px;
            /* margin-left: 20px; */
            line-height: 1.7;
            font-weight: 600;
            display: flex;
            justify-content: center;
        }


        .bottom-info {
            display: flex;
            justify-content: space-between;
        }


        p {
            margin: 0 0 10px;
        }

        .mail-names {
            color: grey;
            font-weight: bold;
            font-size: 15px;
            margin-left: 10px;
        }

        /* 추가 css test */
        .date_div {
            /* align-items: center; */
            text-align: center;
        }

        .btn_div {
            text-align: center;
            margin: 20px;
        }

        #btn_test {
            box-shadow: 0px 2px 10px #999;
            border: none;
            background-color: #fff;
            border-radius: 10px;
            padding: 10px;
            font-size: 15px;
        }

    <!-- 갤러리 스타일 시작 -->

        .slider-section {
            position: relative;
            overflow: hidden;
        }

        .slider-section__slider-containter {
            position: absolute;
            display: flex;
            min-width: 400%;
            left: 0;
            top: 0;
            transition: left 1s ease-in-out;
        }

        .slider-section__height-keeper--image {
            display: block;
            width: 100%;
            opacity: 0;

            margin: 10px
        }

        .slider-section__button {
            position: absolute;
            top: 50%;
            height: 50px;
            width: 50px;
            background-color: rgba(0, 0, 0, 0);
            border: none;
            font-size: 40px;
            color: #bfc3cf;
            cursor: pointer;
        }

        .slider-section__button--left {
            left: 20px;
        }

        .slider-section__button--right {
            right: 20px;
        }

        .photo-slide-container__photo {
            display: block;
            width: 100%;
        }

        /*  */
        .title_div {
			margin-bottom: 30px;
        }

        .summernote_content {
        	width: 65%;
            display: flex;
            flex-direction: column;
            text-align: center;
            align-items: center;
        }

        .content2 {
            display: flex;
            justify-content: center;
            padding: 5px;
            width: 100%;
			flex-wrap: wrap;
        }
        /* 네비게이션 시작  */
.navbar-nav>li a{
	font-size: 14px;
	text-decoration: none;
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
  /* 네비게이션 끝 */
    </style>
    <!-- 갤러리 스타일 끝 -->
</head>

<body>
	
	<%
	
	int info_num = Integer.parseInt(request.getParameter("info_num"));
	System.out.println("인포넘 : " + info_num);
	InfoDAO idao = new InfoDAO();
	InfoDTO show_info = idao.showInfoSelect(info_num);
	int buy = idao.countBuy(info_num);	
	String gosu_id = show_info.getUser_id();
	UserDAO udao = new UserDAO();
	UserDTO gosu_info = udao.userInfo(gosu_id);
		
	
	UserDTO info = (UserDTO)session.getAttribute("info");
	
	%>

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

							<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="Gosu_Est_Receive.jsp">받은견적</a></li>
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="Gosu_Est_Paid.jsp">채택된견적</a></li>
                        <%-- <c:choose>
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
                        </c:choose> --%>


                        <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                           class="nav-link" href="Info_main.jsp">정보거래</a></li>

                        <!-- <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                           class="nav-link" href="Est_ShowConsult.jsp">커뮤니티</a></li> -->

                        <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="MyPage_normal.jsp">마이페이지</a></li>
                        
                        <%if(info != null){ %>
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="LogoutCon.do"><%=info.getUser_name() %>
                                    <%=info.getUser_type() %>님 로그아웃</a></li>
                        <%}%>
                     </ul>
                  </div>

               </nav>
            </div>
         </div>
      </div>
   </div>
</div>
	
<div class="info-wrap-content">
   
    <div class="scroll-cards">
        <!-- 사이드 1번째 박스 시작 -->
        <div class="card">
            <div class="mails">
            <img class="profile_test" src="img/<%=gosu_info.getUser_pic()%>" alt="Profile Picture"> 
			<div class="mail-names">
				<p><%=show_info.getUser_id() %></p>
                </div>
            </div>
            <div class="mail-info">
                <!-- 동남아여행 -->
            </div>
            <div>
            </div>
            <div class="check1">
                <div class="bottom-info">

                </div>
                <div class="date_div">작성일자 <%=show_info.getInfo_wr_date() %></div>
            </div>
        </div>
        <!-- 사이드 1번째 박스 끝 -->

        <!-- 사이드 2번째 박스 시작 -->
        <div class="card">
            <div class="mails">
                <div class="mail-names">
                    정보구매 횟수
                </div>
            </div>
            <div class="mail-info">
                <%=buy %>
            </div>

            <div class="btn_div">
                <button id="btn_test">다른상품 보러가기 💬</button>
            </div>



        </div>
        <!-- 
        <div class="card">
        	
            갤러리 시작

            <section class="slider-section">

                <div class="slider-section__slider-containter">

                    <div class="slider-section__slider-containter--slide photo-slide-container">
                        <img class="photo-slide-container__photo" src="https://picsum.photos/1800/800?random=1" alt="">
                    </div>

                    <div class="slider-section__slider-containter--slide photo-slide-container">
                        <img class="photo-slide-container__photo" src="https://picsum.photos/1800/800?random=2" alt="">
                    </div>

                    <div class="slider-section__slider-containter--slide photo-slide-container">
                        <img class="photo-slide-container__photo" src="https://picsum.photos/1800/800?random=3" alt="">
                    </div>

                    <div class="slider-section__slider-containter--slide photo-slide-container">
                        <img class="photo-slide-container__photo" src="https://picsum.photos/1800/800?random=4" alt="">
                    </div>

                </div>

                <div class="slider-section__height-keeper">
                    <img class="slider-section__height-keeper--image" src="https://picsum.photos/1800/800?random=4"
                        alt="">
                </div>

                <button class="slider-section__button slider-section__button--left">&#10094;</button>
                <button class="slider-section__button slider-section__button--right">&#10095;</button>

            </section>
            갤러리 끝
        </div> -->
        <!-- 사이드 2번째 박스 끝 -->
        
        
    </div>
    
    <div class="summernote_content">
        <div class="title_div">
            <h1><%=show_info.getInfo_title() %></h1>

        </div>
        <!-- <br> -->

        <!-- 사진 및 글 작성 시작 -->
        <div class="content2">
            <p> <%=show_info.getInfo_content() %> </p>
        </div>
        <!-- 사진 및 글 작성 끝 -->
    </div>
</div>




    <div class="popup-page">
        <div class="page__container">
            <div class="popup-page-wrap-content">
                <a href="#popup-article" class="open-popup">🌎지도보기</a>
            </div>
        </div>
        <div id="popup-article" class="popup">
            <div class="popup__container">
                <a href="#" class="popup__close">
                    <span class="screen-reader">close</span>
                </a>
                <div class="popup__content">

                    <!-- 지도 관련 body 시작 -->


                    <!-- <div id="div_left"></div> -->
                    <form action="ConsultCon.do" method="post">
                        <div class="editor-contents">
                            <div id="editor-box">
                                <div id="map"></div>

                                <!-- 사용자가 생성한 마커 정보를 서버로 전송하기 위한 HTML Form -->
                                <input type="hidden" id="lat-input" name="lat">
                                <input type="hidden" id="lng-input" name="lng">

                            </div>
                        </div>
                    </form>
                    <!-- 사용자의 위치를 검색할 수 있는 검색 박스를 추가할 입력 요소 -->
                    <!-- 지도가 표시될 요소 -->
                    <input id="search-location" type="text" placeholder="장소를 검색하세요">
                    <!-- note script start-->
                    <!-- 지도 관련 body 끝 -->
                </div>
            </div>
        </div>
    </div>
    <!-- partial -->


  <!-- 지도 관련 스크립트 시작 -->
	 <script>
        // JSP 페이지에서 받아온 위도와 경도 값
        var latValue = <%=show_info.getInfo_lat()%>;
        var lngValue = <%=show_info.getInfo_lng()%>;

        // 구글 지도 API 스크립트 로딩 후 실행될 콜백 함수입니다.
        function initMap() {
            // 위도와 경도를 기준으로 지도의 중심 위치를 설정합니다.
            var mapCenter = { lat: latValue, lng: lngValue };

            // 지도 생성 및 설정
            var map = new google.maps.Map(document.getElementById('map'), {
                center: mapCenter,
                zoom: 12
            });

            // 선택한 위치에 마커 생성
            var marker = new google.maps.Marker({
                map: map,
                position: mapCenter,
                title: '선택한 위치'
            });
        }
    </script>
  <!-- 지도 관련 스크립트 끝 -->

    <!-- 메인 하단 스크립트 시작 -->

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/daterangepicker.js"></script>

    <script src="js/typed.js"></script>

    <script src="js/custom.js"></script>
    <!-- 메인 하단 스크립트 끝 -->

    <!-- 갤러리 스크립트 시작 -->
    <script>
        const leftButton = document.querySelector('.slider-section__button--left');
        const rightButton = document.querySelector('.slider-section__button--right');
        const sliderContainer = document.querySelector('.slider-section__slider-containter');

        const positions = ["left: 0", "left: -100%", "left: -200%", "left: -300%"];

        var sliderPosition = 0;

        leftButton.addEventListener('click', function () {
            sliderPosition -= 1;
            if (sliderPosition < 0) { sliderPosition = 3 }
            sliderContainer.style = `${positions[sliderPosition]}`
        });

        rightButton.addEventListener('click', function () {
            sliderPosition += 1;
            if (sliderPosition > 3) { sliderPosition = 0 }
            sliderContainer.style = `${positions[sliderPosition]}`
        });
    </script>
    <!-- 갤러리 스크립트 시작 -->
    
    
	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
</body>

</html>