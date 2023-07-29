<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<title>Tour Free Bootstrap Template for Travel Agency by
	Untree.co</title>

<!-- 메인 대표여행지 link 시작 -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Abril+Fatface"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet"
	href="/TravelMaker/css/main_best_travel_react.css">
<!-- 메인 대표여행지 link 끝 -->

<!-- 메인 사진첩 link시작 -->
<link rel='stylesheet'
	href='https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css'>
<link rel="stylesheet" href="css/main_gallery_react.css">
<!-- 메인 사진첩 link시작 -->

<!-- 메인 중간 텍스트 폰트 link 시작 -->
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.16/tailwind.min.css'>
<link rel="stylesheet" href="css/middle_text.css">
<!-- 메인 중간 텍스트 폰트 link 시작 -->


</head>
<style>
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


<body>

<!-- 회원가입 성공 시 알림창 -->
<%
    String signupSuccess = request.getParameter("signup");
    if (signupSuccess != null && signupSuccess.equals("success")) {
%>
    <script>
        alert("회원가입 성공! 환영합니다.");
        <%signupSuccess = null;%>
    </script>
<%
    }
%>
<!-- 로그인 실패 알림창 -->
<%
    String loginfail = request.getParameter("loginfail");
    if (loginfail != null && loginfail.equals("true")) {
%>
    <script>
        alert("ID 또는 PW를 잘 못 입력하셨습니다.");
        <%loginfail = null;%>
    </script>
<%
    }
%>

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<!-- 네비게이션 시작 -->


	<div class="hero-anime">
		<div class="navigation-wrap bg-light start-header start-style">
			<div class="container_nav">
				<div class="row">
					<div class="col-12">
						<nav class="main_navbar navbar-expand-md navbar-light">

							<a class="navbar_logo" href="Main.jsp" target="_blank"> <img
								src="/TravelMaker/img/Logo.png" alt="Logo"></a>

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
													<a id="reqlogin" class="dropdown-item" href="User_Consult_Receive.jsp">받은컨설팅</a>
													<script>
													  // 알림 메시지를 표시하는 함수를 정의합니다.
													  function showAlertMessage() {
													    alert("로그인하세요"); // 원하는 알림 메시지로 변경하세요.
													  }
													
													  // "받은컨설팅" 링크에 이벤트 리스너를 추가합니다.
													  document.getElementById("reqlogin").addEventListener("click", function(event) {
													    // 'info' 변수가 'null'인지 확인합니다.
													    if (${info == null }) {
													      event.preventDefault(); // 링크의 기본 동작(지정된 URL로 이동)을 막습니다.
													      showAlertMessage(); // 알림 메시지를 표시합니다.
													    }
													  });
													</script>
														
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



	<!-- 메인 견적요청 시작 -->

	<div class="hero">

		<div class="container">

			<div class="row align-items-center">
				<div class="col-lg-5">
					<div class="slides">
						<img src="img/2272C43A571CA7C011.jpg" alt="Image"class="img-fluid active"> 
<!-- 						<img src="img/hero-slider-1.jpg" alt="Image"class="img-fluid active">  -->
						<img src="img/hero-slider-2.jpg" alt="Image" class="img-fluid"> 
						<img src="img/hero-slider-3.jpg" alt="Image" class="img-fluid">
						<img src="img/hero-slider-4.jpg" alt="Image" class="img-fluid">
						<img src="img/hero-slider-5.jpg" alt="Image" class="img-fluid">
					</div>
				</div>
				<!-- 메인 견적요청 틀 시작 -->
				<div class="col-lg-7">


					<div class="intro-wrap">
						<h1 class="mb-5">
							<span class="d-block">여행을 만들다</span> Make <span
								class="typed-words"></span>
						</h1>


					</div>
				</div>
				<!-- 메인 견적요청 틀 끝 -->
				<!-- 메인-원그림사진 -->


			</div>
		</div>
	</div>

	<!-- 메인 견적요청 끝 -->


	<!-- 메인 중간1 텍스트 폰트 시작-->
	<div class="hit-the-floor">gallery</div>

	<div
		class="alternative-versions absolute bottom-0 w-full flex justify-center underline space-x-4 p-12">

	</div>
	<script src="/TravelMaker/js/middle_text.js"></script>
	<!-- 메인 중간1 텍스트 폰트 끝-->

	<!-- 메인 사진첩 시작 -->

	<!-- partial:index.partial.html -->
	<section>
		<div class="swiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide swiper-slide--one">
					<span>domestic</span>
					<div>
						<h2>Enjoy the exotic of sunny Hawaii</h2>
						<p>
							<svg xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
								class="w-6 h-6">
                        <path stroke-linecap="round"
									stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round"
									stroke-linejoin="round"
									d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                     </svg>
							Maui, Hawaii
						</p>
					</div>
				</div>
				<div class="swiper-slide swiper-slide--two">
					<span>subtropical</span>
					<div>
						<h2>The Island of Eternal Spring</h2>
						<p>
							<svg xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
								class="w-6 h-6">
                        <path stroke-linecap="round"
									stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round"
									stroke-linejoin="round"
									d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                     </svg>
							Lanzarote, Spanien
						</p>
					</div>
				</div>

				<div class="swiper-slide swiper-slide--three">
					<span>history</span>
					<div>
						<h2>Awesome Eiffel Tower</h2>
						<p>
							<svg xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
								class="w-6 h-6">
                        <path stroke-linecap="round"
									stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round"
									stroke-linejoin="round"
									d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                     </svg>
							Paris, France
						</p>
					</div>
				</div>

				<div class="swiper-slide swiper-slide--four">
					<span>Mayans</span>
					<div>
						<h2>One of the safest states in Mexico</h2>
						<p>
							<svg xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
								class="w-6 h-6">
                        <path stroke-linecap="round"
									stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round"
									stroke-linejoin="round"
									d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                     </svg>
							The Yucatan, Mexico
						</p>
					</div>
				</div>

				<div class="swiper-slide swiper-slide--five">
					<span>native</span>
					<div>
						<h2>The most popular yachting destination</h2>
						<p>

							<svg xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
								class="w-6 h-6">
                        <path stroke-linecap="round"
									stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round"
									stroke-linejoin="round"
									d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                     </svg>
							Whitsunday Islands, Australia
						</p>
					</div>
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
		</div>
	</section>
	<!-- partial -->

	<!-- 메인 사진첩 끝  -->

	<!-- 메인 중간2 텍스트 폰트 시작 -->
	<!-- partial:index.partial.html -->
	<div class="hit-the-floor">유명한 여행지</div>

	<div
		class="alternative-versions absolute bottom-0 w-full flex justify-center underline space-x-4 p-12">

	</div>

	<script src="/TravelMaker/js/middle_text.js"></script>
	<!-- 메인 중간2 텍스트 폰트 끝 -->

	<!-- 메인 대표 여행지 시작 -->
	<div id="container">
		<div class="slide anim-in">
			<div class="image"
				style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/venice.jpg);">
			</div>
			<div class="overlay"></div>
			<div class="content">
				<h1 class="title" data-title="Venice">Venice</h1>
				<div class="emblem"
					style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/italian-emblem.svg);"></div>
				<ul class="city-info">
					<li class="country">Country: Italy</li>
					<li class="founded">Founded: 697</li>
					<li class="population">Population: 260,060</li>
				</ul>
			</div>
			<div class="btn-close"></div>
		</div>
		<div class="slide anim-in">
			<div class="image"
				style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/paris.jpg);">
			</div>
			<div class="overlay"></div>
			<div class="content">
				<h1 class="title" data-title="Paris">Paris</h1>
				<div class="emblem"
					style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/french-emblem.svg);"></div>
				<ul class="city-info">
					<li class="country">Country: France</li>
					<li class="founded">Founded: ~250BC</li>
					<li class="population">Population: 2.2 Million</li>
				</ul>
			</div>
			<div class="btn-close"></div>
		</div>
		<div class="slide anim-in">
			<div class="image"
				style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/salzburg.jpg);"></div>
			<div class="overlay"></div>
			<div class="content">
				<h1 class="title" data-title="Salzburg">Salzburg</h1>
				<div class="emblem"
					style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/austrian-emblem.svg);"></div>
				<ul class="city-info">
					<li class="country">Country: Austria</li>
					<li class="founded">Founded: 1622</li>
					<li class="population">Population: 145,871</li>
				</ul>
			</div>
			<div class="btn-close"></div>
		</div>
		<div class="slide anim-in">
			<div class="image"
				style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/prague.jpg);">
			</div>
			<div class="overlay"></div>
			<div class="content">
				<h1 class="title" data-title="Prague">Prague</h1>
				<div class="emblem"
					style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/czech-emblem.svg);"></div>
				<ul class="city-info">
					<li class="country">Country: Czech Republic</li>
					<li class="founded">Founded: 870</li>
					<li class="population">Population: 1.2 Million</li>
				</ul>
			</div>
			<div class="btn-close"></div>
		</div>
	</div>


	<!-- 푸터 시작 -->

	<jsp:include page="Footer.jsp"></jsp:include>

	<!-- 푸터 끝 -->


	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

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
	<script>
      $(function () {

         var slides = $('.slides'),
            images = slides.find('img');

         images.each(function (i) {
            $(this).attr('data-id', i + 1);
         })

         var typed = new Typed('.typed-words', {
            strings: [" Japan.", " Paris.", " New Zealand.", " Maui.", " London."],
            typeSpeed: 80,
            backSpeed: 80,
            backDelay: 4000,
            startDelay: 1000,
            loop: true,
            showCursor: true,
            preStringTyped: (arrayPos, self) => {
               arrayPos++;
               console.log(arrayPos);
               $('.slides img').removeClass('active');
               var result = $('selectbox option:selected').val();

               $('.slides img[data-id="' + arrayPos + '"]').addClass('active');
            }

         });
      })

   </script>

	<script src="js/custom.js"></script>

   <!-- 메인 네비 수정본 script 시작 -->
   <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
   <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>
   <script src="/TravelMaker/js/main_nav_correction.js"></script>
   <!-- 메인 네비 수정본 script 끝 -->

	<!-- 메인 대표여행지 script 시작 -->

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
	<script src="/TravelMaker/js/main_best_travel_react.js"></script>

	<!-- 메인 대표여행지 script 끝 -->

	<!-- 메인 사진첩 script 시작 -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.4.5/swiper-bundle.min.js'></script>
	<script src="/TravelMaker/js/main_gallery_react.js"></script>
	<!-- 메인 사진첩 script 끝 -->

	<!--  메인 작은 사진 script 시작  -->
	<script>
	
    // Function to hide/show the image based on viewport width
    function hideImageOnResize() {
      
      var targetImage = document.getElementsByClassName('slides');
      
      //console.log(window.outerWidth, window.innerWidth);
      
      if (window.innerWidth <= 1200) {
    	console.log('none');
        targetImage[0].style.display = 'none';
      } else {
    	console.log('inline');
        targetImage[0].style.display = 'block'; // or 'block' depending on your image container
      }
    }

    // Call the function on page load
    // hideImageOnResize();

    // Call the function whenever the window is resized
    window.addEventListener('resize',hideImageOnResize);
    
  </script>
   
	<!--  메인 작은 사진 script 끝  -->

</body>

</html>