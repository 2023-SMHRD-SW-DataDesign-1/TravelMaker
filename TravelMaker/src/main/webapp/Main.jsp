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

<body>

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<!-- 네비게이션 시작 -->

	<jsp:include page="Nav.jsp"></jsp:include>

	<!-- 네비게이션 끝 -->



	<!-- 메인 견적요청 시작 -->

	<div class="hero">

		<div class="container">

			<div class="row align-items-center">
				<div class="col-lg-5">
					<div class="slides">
						<img src="img/hero-slider-1.jpg" alt="Image"
							class="img-fluid active"> <img src="img/hero-slider-2.jpg"
							alt="Image" class="img-fluid"> <img
							src="img/hero-slider-3.jpg" alt="Image" class="img-fluid">
						<img src="img/hero-slider-4.jpg" alt="Image" class="img-fluid">
						<img src="img/hero-slider-5.jpg" alt="Image" class="img-fluid">
					</div>
				</div>
				<!-- 메인 견적요청 틀 시작 -->
				<div class="col-lg-7">


					<div class="intro-wrap">
						<h1 class="mb-5">
							<span class="d-block">Make The Trip</span> Trip In <span
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
	<div class="hit-the-floor">popular destinations</div>

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