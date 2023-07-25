<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- /*
* Template Name: Tour
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">

<head>
   <meta charset="utf-8">
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

   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/owl.carousel.min.css">
   <link rel="stylesheet" href="css/owl.theme.default.min.css">
   <link rel="stylesheet" href="css/jquery.fancybox.min.css">
   <link rel="stylesheet" href="fonts/icomoon/style.css">
   <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
   <link rel="stylesheet" href="css/daterangepicker.css">
   <link rel="stylesheet" href="css/aos.css">
   <link rel="stylesheet" href="css/style.css">
   <title>Tour Free Bootstrap Template for Travel Agency by Untree.co</title>

   <!-- 네비 bar 수정본 link 시작 -->
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
   <link rel="stylesheet" href="/TravelMaker/css/main_nav_correction.css">
   <!-- 네비 bar 수정본 link 끝 -->

   <!-- 메인 대표여행지 link 시작 -->
   <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Abril+Fatface" rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
   <link rel="stylesheet" href="/TravelMaker/css/main_best_travel_react.css">
   <!-- 메인 대표여행지 link 끝 -->

   <!-- 메인 사진첩 link시작 -->
   <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css'>
   <link rel="stylesheet" href="css/main_gallery_react.css">
   <!-- 메인 사진첩 link시작 -->

   <!-- 메인 중간 텍스트 폰트 link 시작 -->
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.16/tailwind.min.css'>
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

   <!-- 네비bar 수정본 시작 -->

   <!-- 네비bar 수정본 (고객/고수 로그인 전 네비) 시작-->
   <!-- <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
      <a class="nav-link" href="#">로그인</a> -->

   <body class="hero-anime">
      <div class="navigation-wrap bg-light start-header start-style">
         <div class="container">
            <div class="row">
               <div class="col-12">
                  <nav class="navbar navbar-expand-md navbar-light">

                     <a class="navbar-brand" href="https://front.codes/" target="_blank">
                        <img src="imag/여행을만들다_로고.png" alt=""></a>

                     <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                     </button>

                     <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto py-4 py-md-0">
                           <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                              <a class="nav-link" href="#">컨설팅요청</a>
                           </li>
                           <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active">
                              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                                 aria-haspopup="true" aria-expanded="false">컨설팅</a>
                              <div class="dropdown-menu">
                                 <a class="dropdown-item" href="#">보낸 컨설팅</a>
                                 <a class="dropdown-item" href="#">확정 컨설팅</a>

                              </div>
                           </li>

                           <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                              <a class="nav-link" href="#">정보거래</a>
                           </li>

                           <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                              <a class="nav-link" href="#">커뮤니티</a>
                           </li>
                           </li>
                           <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                              <a class="nav-link" href="#">로그인</a>
                           </li>
                           <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                              <a class="nav-link" href="#">회원가입</a>
                           </li>
                        </ul>
                     </div>

                  </nav>
               </div>
            </div>
         </div>
      </div>

   </body>

   <!-- 네비bar 수정본 (고객/고수 로그인 전 네비) 끝-->


   <!-- 네비 bar 수정본 끝 -->

   <!-- 네비게이션 시작 -->
   <!--로그인 전 네비-->
   <!-- <nav class="site-nav">
      <div class="container">
         <div class="site-navigation">
            <a href="index.html" class="logo m-0"> Travel Maker <span class="text-primary"></span></a>

            <ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
               <li class="active"><a href="#">견적요청</a></li>
               <li><a href="#">받은견적</a></li>
               <li><a href="#">정보거래</a></li>
               <li><a href="#">커뮤니티</a></li>
            </ul>

            <ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">

               <li class="has-children"><a href="#">채팅</a></li>
               <li class="active"><a href="#">로그인 / 회원가입</a></li>

            </ul>

         </div>
      </div>
   </nav> -->
   <!-- 로그인 전 네비 끝 -->

   <!--로그인 후 네비-->

   <!-- <nav class="site-nav">
   <div class="container">
      <div class="site-navigation">
        <a href="index.html" class="logo m-0"> Travel Maker <span class="text-primary"></span></a>

        <ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
          <li class="active"><a href="#">견적요청</a></li>
          <li><a href="#">받은견적</a></li>
          <li><a href="#">정보거래</a></li>
          <li><a href="#">커뮤니티</a></li>
        </ul>

        <ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
           
           <li class="has-children"><a href="#">채팅</a></li>
           
          <li class="has-children">
            <a href="#">프로필</a>
            <ul class="dropdown">
               <li><a href="elements.html">받은견적</a></li>
               <li><a href="#">마이페이지</a></li>

            </ul>
         </li>
        </ul>

      </div>
   </div>
 </nav> -->

   <!--  로그인후 네비게이션 끝 -->
   <!-- 네비게이션 끝 -->

   <!-- 메인 견적요청 시작 -->

   <div class="hero">
      <div class="container">

         <div class="row align-items-center">

            <!-- 메인 견적요청 틀 시작 -->
            <div class="col-lg-7">


               <div class="intro-wrap">
                  <h1 class="mb-5"><span class="d-block">Make The Trip</span> Trip In <span class="typed-words"></span>
                  </h1>

                  <div class="row">
                     <div class="col-12">
                        <form class="form">
                           <div class="row mb-2">
                              <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">


                                 <select name="selectbox" id="selectbox" class="form-control custom-select"
                                    onchange="selectchange(this)">
                                    <option value="">Destination</option>
                                    <option value="l1">Peru</option>
                                    <option value="l2">Japan</option>
                                    <option value="l3">Thailand</option>
                                    <option value="l4">Brazil</option>
                                    <option value="l5">United States</option>
                                    <!-- <option value="">Israel</option>
                                    <option value="">China</option>
                                    <option value="">Russia</option> -->
                                 </select>




                              </div>
                              <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-5">
                                 <input type="text" class="form-control" name="daterange">
                              </div>
                              <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-3">
                                 <input type="text" class="form-control" placeholder="# of People">
                              </div>

                           </div>
                           <div class="row align-items-center">
                              <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
                                 <input type="submit" class="btn btn-primary btn-block" value="Search">
                              </div>
                              <div class="col-lg-8">
                                 <label class="control control--checkbox mt-3">
                                    <span class="caption">Save this search</span>
                                    <input type="checkbox" checked="checked" />
                                    <div class="control__indicator"></div>
                                 </label>
                              </div>
                           </div>
                        </form>
                     </div>

                  </div>
               </div>
            </div>
            <!-- 메인 견적요청 틀 끝 -->
            <!-- 메인-원그림사진 -->
            <div class="col-lg-5">
               <div class="slides">
                  <img src="img/hero-slider-1.jpg" alt="Image" class="img-fluid active">
                  <img src="img/hero-slider-2.jpg" alt="Image" class="img-fluid">
                  <img src="img/hero-slider-3.jpg" alt="Image" class="img-fluid">
                  <img src="img/hero-slider-4.jpg" alt="Image" class="img-fluid">
                  <img src="img/hero-slider-5.jpg" alt="Image" class="img-fluid">
               </div>
            </div>

         </div>
      </div>
   </div>

   <!-- 메인 견적요청 끝 -->

   <!-- 메인 숙소, 카페 소개 시작-->
   <!-- <div class="untree_co-section">
      <div class="container">
         <div class="row mb-5 justify-content-center">
            <div class="col-lg-6 text-center">
               <h2 class="section-title text-center mb-3">고수 회원정보</h2>
               <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            </div>
         </div>
         <div class="row align-items-stretch">
            <div class="col-lg-4 order-lg-1">
               <div class="h-100"><div class="frame h-100"><div class="feature-img-bg h-100" style="background-image: url('images/hero-slider-1.jpg');"></div></div></div>
            </div>

            <div class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-1" >

               <div class="feature-1 d-md-flex">
                  <div class="align-self-center">
                     <span class="flaticon-house display-4 text-primary"></span>
                     <h3>Beautiful Condo</h3>
                     <p class="mb-0">Even the all-powerful Pointing has no control about the blind texts.</p>
                  </div>
               </div>

               <div class="feature-1 ">
                  <div class="align-self-center">
                     <span class="flaticon-restaurant display-4 text-primary"></span>
                     <h3>Restaurants & Cafe</h3>
                     <p class="mb-0">Even the all-powerful Pointing has no control about the blind texts.</p>
                  </div>
               </div>

            </div>

            <div class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-3" >

               <div class="feature-1 d-md-flex">
                  <div class="align-self-center">
                     <span class="flaticon-mail display-4 text-primary"></span>
                     <h3>Easy to Connect</h3>
                     <p class="mb-0">Even the all-powerful Pointing has no control about the blind texts.</p>
                  </div>
               </div>

               <div class="feature-1 d-md-flex">
                  <div class="align-self-center">
                     <span class="flaticon-phone-call display-4 text-primary"></span>
                     <h3>24/7 Support</h3>
                     <p class="mb-0">Even the all-powerful Pointing has no control about the blind texts.</p>
                  </div>
               </div>

            </div>

         </div>
      </div>
   </div> -->

   <!-- 메인 숙소, 카페 소개 끝-->

   <!-- 메인 members 시작 -->

   <!-- 
   <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

   <div class="content">
      <div class="content__container">
         <p class="content__container__text">
            Members
         </p>

         <ul class="content__container__list">
            <li class="content__container__list__item">고객 : 30명</li>
            <li class="content__container__list__item">고수 : 20명</li>
            
         </ul>

      </div>
   </div>

   -->
   <!-- 메인 members 끝 -->

   <!-- 메인 사용자수 시작 -->

   <!-- 
   <div class="untree_co-section count-numbers py-5">
      <div class="container">
         <div class="row">
            <div class="col-6 col-sm-6 col-md-6 col-lg-3">
               <div class="counter-wrap">
                  <div class="counter">
                     <span class="" data-number="9313">0</span>
                  </div>
                  <span class="caption">누적 사용자</span>
               </div>
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-3">
               <div class="counter-wrap">
                  <div class="counter">
                     <span class="" data-number="8492">0</span>
                  </div>
                  <span class="caption">누적 견적요청수</span>
               </div>
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-3">
               <div class="counter-wrap">
                  <div class="counter">
                     <span class="" data-number="100">0</span>
                  </div>
                  <span class="caption">고수 이용자수</span>
               </div>
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-3">
               <div class="counter-wrap">
                  <div class="counter">
                     <span class="" data-number="120">0</span>
                  </div>
                  <span class="caption">거래내역</span>
               </div>
            </div>
         </div>
      </div>
   </div>
   -->
   <!-- 메인 사용자수 끝 -->

   <!-- 메인-실시간 베스트 컨설팅 시작 -->
   <!-- 
   <div class="untree_co-section">
      <div class="container">
         <div class="row text-center justify-content-center mb-5">
            <div class="col-lg-7"><h2 class="section-title text-center">실시간 베스트 컨설팅</h2></div>
         </div>

         <div class="owl-carousel owl-3-slider">

            <div class="item">
               <a class="media-thumb" href="images/hero-slider-1.jpg" data-fancybox="gallery">
                  <div class="media-text">
                     <h3>Pragser Wildsee</h3>
                     <span class="location">Italy</span>
                  </div>
                  <img src="images/hero-slider-1.jpg" alt="Image" class="img-fluid">
               </a> 
            </div>

            <div class="item">
               <a class="media-thumb" href="images/hero-slider-2.jpg" data-fancybox="gallery">
                  <div class="media-text">
                     <h3>Oia</h3>
                     <span class="location">Greece</span>
                  </div>
                  <img src="images/hero-slider-2.jpg" alt="Image" class="img-fluid">
               </a> 
            </div>

            <div class="item">
               <a class="media-thumb" href="images/hero-slider-3.jpg" data-fancybox="gallery">
                  <div class="media-text">
                     <h3>Perhentian Islands</h3>
                     <span class="location">Malaysia</span>
                  </div>
                  <img src="images/hero-slider-3.jpg" alt="Image" class="img-fluid">
               </a> 
            </div>


            <div class="item">
               <a class="media-thumb" href="images/hero-slider-4.jpg" data-fancybox="gallery">
                  <div class="media-text">
                     <h3>Rialto Bridge</h3>
                     <span class="location">Italy</span>
                  </div>
                  <img src="images/hero-slider-4.jpg" alt="Image" class="img-fluid">
               </a> 
            </div>

            <div class="item">
               <a class="media-thumb" href="images/hero-slider-5.jpg" data-fancybox="gallery">
                  <div class="media-text">
                     <h3>San Francisco, United States</h3>
                     <span class="location">United States</span>
                  </div>
                  <img src="images/hero-slider-5.jpg" alt="Image" class="img-fluid">
               </a> 
            </div>

            <div class="item">
               <a class="media-thumb" href="images/hero-slider-1.jpg" data-fancybox="gallery">
                  <div class="media-text">
                     <h3>Lake Thun</h3>
                     <span class="location">Switzerland</span>
                  </div>
                  <img src="images/hero-slider-2.jpg" alt="Image" class="img-fluid">
               </a> 
            </div>

         </div>

      </div>
   </div> -->

   <!-- 메인-실시간 베스트 컨설팅 끝 -->

   <!-- 메인-이용후기 -->

   <!-- <div class="untree_co-section testimonial-section mt-5">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-lg-7 text-center">
               <h2 class="section-title text-center mb-5">이용후기</h2>

               <div class="owl-single owl-carousel no-nav">
                  <div class="testimonial mx-auto">
                     <figure class="img-wrap">
                        <img src="images/person_2.jpg" alt="Image" class="img-fluid">
                     </figure>
                     <h3 class="name">Adam Aderson</h3>
                     <blockquote>
                        <p>&ldquo;There live the blind texts. Separated they live in Bookmarksgrove right at the coast
                           of the Semantics, a large language ocean.&rdquo;</p>
                     </blockquote>
                  </div>

                  <div class="testimonial mx-auto">
                     <figure class="img-wrap">
                        <img src="images/person_3.jpg" alt="Image" class="img-fluid">
                     </figure>
                     <h3 class="name">Lukas Devlin</h3>
                     <blockquote>
                        <p>&ldquo;There live the blind texts. Separated they live in Bookmarksgrove right at the coast
                           of the Semantics, a large language ocean.&rdquo;</p>
                     </blockquote>
                  </div>

                  <div class="testimonial mx-auto">
                     <figure class="img-wrap">
                        <img src="images/person_4.jpg" alt="Image" class="img-fluid">
                     </figure>
                     <h3 class="name">Kayla Bryant</h3>
                     <blockquote>
                        <p>&ldquo;There live the blind texts. Separated they live in Bookmarksgrove right at the coast
                           of the Semantics, a large language ocean.&rdquo;</p>
                     </blockquote>
                  </div>

               </div>

            </div>
         </div>
      </div>
   </div> -->

   <!-- 메인-이용후기 끝 -->

   <!-- 메인 중간1 텍스트 폰트 시작-->
   <div class="hit-the-floor">gallery</div>

   <div class="alternative-versions absolute bottom-0 w-full flex justify-center underline space-x-4 p-12">

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
                     <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round"
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
                     <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round"
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
                     <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round"
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
                     <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round"
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

                     <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round"
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

   <div class="alternative-versions absolute bottom-0 w-full flex justify-center underline space-x-4 p-12">

   </div>

   <script src="/TravelMaker/js/middle_text.js"></script>
   <!-- 메인 중간2 텍스트 폰트 끝 -->

   <!-- 메인 대표 여행지 시작 -->
   <div id="container">
      <div class="slide anim-in">
        <div class="image" style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/venice.jpg);">
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
        <div class="image" style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/paris.jpg);">
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
        <div class="image" style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/544318/prague.jpg);">
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
    </div><a id="codepen-link" href="https://www.codepen.io/seanfree" target="_blank"></a>
    

    <!-- 메인 대표 여행지 끝 -->


   <!-- 메인-실시간 고수 포트폴리오 -->
   <!-- <div class="untree_co-section">
      <div class="container">
         <div class="row justify-content-center text-center mb-5">
            <div class="col-lg-6">            
               <h2 class="section-title text-center mb-3"> 실시간 고수 포트폴리오 </h2>                
               <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            </div>
         </div>
         <div class="row">
            <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
               <div class="media-1">
                  <a href="#" class="d-block mb-3"><img src="images/hero-slider-1.jpg" alt="Image" class="img-fluid"></a>
                  <span class="d-flex align-items-center loc mb-2">
                     <span class="icon-room mr-3"></span>
                     <span>Italy</span>
                  </span>
                  <div class="d-flex align-items-center">
                     <div>
                        <h3><a href="#">Rialto Mountains</a></h3>
                        <div class="price ml-auto">
                           <span>$520.00</span>
                        </div>
                     </div>
                     
                  </div>
                  
               </div>
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
               <div class="media-1">
                  <a href="#" class="d-block mb-3"><img src="images/hero-slider-2.jpg" alt="Image" class="img-fluid"></a>
                  <span class="d-flex align-items-center loc mb-2">
                     <span class="icon-room mr-3"></span>
                     <span>United States</span>
                  </span>
                  <div class="d-flex align-items-center">
                     <div>
                        <h3><a href="#">San Francisco</a></h3>
                        <div class="price ml-auto">
                           <span>$520.00</span>
                        </div>
                     </div>
                     
                  </div>
                  
               </div>
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
               <div class="media-1">
                  <a href="#" class="d-block mb-3"><img src="images/hero-slider-3.jpg" alt="Image" class="img-fluid"></a>
                  <span class="d-flex align-items-center loc mb-2">
                     <span class="icon-room mr-3"></span>
                     <span>Malaysia</span>
                  </span>
                  <div class="d-flex align-items-center">
                     <div>
                        <h3><a href="#">Perhentian Islands</a></h3>
                        <div class="price ml-auto">
                           <span>$750.00</span>
                        </div>
                     </div>
                     
                  </div>
                  
               </div>
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
               <div class="media-1">
                  <a href="#" class="d-block mb-3"><img src="images/hero-slider-4.jpg" alt="Image" class="img-fluid"></a>

                  <span class="d-flex align-items-center loc mb-2">
                     <span class="icon-room mr-3"></span>
                     <span>Switzerland</span>
                  </span>

                  <div class="d-flex align-items-center">
                     <div>
                        <h3><a href="#">Lake Thun</a></h3>
                        <div class="price ml-auto">
                           <span>$520.00</span>
                        </div>
                     </div>
                     
                  </div>
                  
               </div>
            </div>
         </div>
      </div>
   </div> -->

   <!-- 메인 - 실시간 고수 포트폴리오 시작 -->
   <!-- <div class="untree_co-section">
   <div class="container">
      <div class="row text-center justify-content-center mb-5">
        <div class="col-lg-7"><h2 class="section-title text-center">실시간 고수 포트폴리오</h2></div>
      </div>

      <div class="owl-carousel owl-3-slider">

        <div class="item">
          <a class="media-thumb" href="images/hero-slider-1.jpg" data-fancybox="gallery">
            <div class="media-text">
               <h3>Pragser Wildsee</h3>
               <span class="location">Italy</span>
            </div>
            <img src="images/hero-slider-1.jpg" alt="Image" class="img-fluid">
          </a> 
        </div>

        <div class="item">
          <a class="media-thumb" href="images/hero-slider-2.jpg" data-fancybox="gallery">
            <div class="media-text">
               <h3>Oia</h3>
               <span class="location">Greece</span>
            </div>
            <img src="images/hero-slider-2.jpg" alt="Image" class="img-fluid">
          </a> 
        </div>

        <div class="item">
          <a class="media-thumb" href="images/hero-slider-3.jpg" data-fancybox="gallery">
            <div class="media-text">
               <h3>Perhentian Islands</h3>
               <span class="location">Malaysia</span>
            </div>
            <img src="images/hero-slider-3.jpg" alt="Image" class="img-fluid">
          </a> 
        </div>


        <div class="item">
          <a class="media-thumb" href="images/hero-slider-4.jpg" data-fancybox="gallery">
            <div class="media-text">
               <h3>Rialto Bridge</h3>
               <span class="location">Italy</span>
            </div>
            <img src="images/hero-slider-4.jpg" alt="Image" class="img-fluid">
          </a> 
        </div>

        <div class="item">
          <a class="media-thumb" href="images/hero-slider-5.jpg" data-fancybox="gallery">
            <div class="media-text">
               <h3>San Francisco, United States</h3>
               <span class="location">United States</span>
            </div>
            <img src="images/hero-slider-5.jpg" alt="Image" class="img-fluid">
          </a> 
        </div>

        <div class="item">
          <a class="media-thumb" href="images/hero-slider-1.jpg" data-fancybox="gallery">
            <div class="media-text">
               <h3>Lake Thun</h3>
               <span class="location">Switzerland</span>
            </div>
            <img src="images/hero-slider-2.jpg" alt="Image" class="img-fluid">
          </a> 
        </div>
      </div>
   </div> -->

   <!-- 메인 - 실시간 고수 포트폴리오 끝 -->

   </div>

   <!-- 메인 - 비디오창 시작 -->

   <!-- <div class="untree_co-section">
      <div class="container">
         <div class="row justify-content-between align-items-center">
            
            <div class="col-lg-6">
               <figure class="img-play-video">
                  <a id="play-video" class="video-play-button" href="https://www.youtube.com/watch?v=mwtbEGNABWU" data-fancybox>
                     <span></span>
                  </a>
                  <img src="images/hero-slider-2.jpg" alt="Image" class="img-fluid rounded-20">
               </figure>
            </div>

            <div class="col-lg-5">
               <h2 class="section-title text-left mb-4">Take a look at Tour Video</h2>
               <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>

               <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>

               <ul class="list-unstyled two-col clearfix">
                  <li>Outdoor recreation activities</li>
                  <li>Airlines</li>
                  <li>Car Rentals</li>
                  <li>Cruise Lines</li>
                  <li>Hotels</li>
                  <li>Railways</li>
                  <li>Travel Insurance</li>
                  <li>Package Tours</li>
                  <li>Insurance</li>
                  <li>Guide Books</li>
               </ul>

               <p><a href="#" class="btn btn-primary">Get Started</a></p>

               
            </div>
         </div>
      </div>
   </div> -->

   <!-- 메인 - 비디오창 끝 -->


   <!-- 메인 -  연락창 배너 시작(쓸데없음) -->
   <!-- <div class="py-5 cta-section">
      <div class="container">
         <div class="row text-center">
            <div class="col-md-12">
               <h2 class="mb-2 text-white">Lets you Explore the Best. Contact Us Now</h2>
               <p class="mb-4 lead text-white text-white-opacity">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, fugit?</p>
               <p class="mb-0"><a href="booking.html" class="btn btn-outline-white text-white btn-md font-weight-bold">Get in touch</a></p>
            </div>
         </div>
      </div>
   </div> -->
   <!-- 메인 -  연락창 배너 끝(쓸데없음) -->

   <!-- 메인 - 고객센터 배너 시작 -->
   <div class="site-footer">
      <div class="inner first">
         <div class="container">
            <div class="row">
               <div class="col-md-6 col-lg-4">
                  <div class="widget">
                     <h3 class="heading">About Tour</h3>
                     <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there
                        live the blind texts.</p>
                  </div>
                  <div class="widget">
                     <ul class="list-unstyled social">
                        <li><a href="#"><span class="icon-twitter"></span></a></li>
                        <li><a href="#"><span class="icon-instagram"></span></a></li>
                        <li><a href="#"><span class="icon-facebook"></span></a></li>
                        <li><a href="#"><span class="icon-linkedin"></span></a></li>
                        <li><a href="#"><span class="icon-dribbble"></span></a></li>
                        <li><a href="#"><span class="icon-pinterest"></span></a></li>
                        <li><a href="#"><span class="icon-apple"></span></a></li>
                        <li><a href="#"><span class="icon-google"></span></a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-6 col-lg-2 pl-lg-5">
                  <div class="widget">
                     <h3 class="heading">Pages</h3>
                     <ul class="links list-unstyled">
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-6 col-lg-2">
                  <div class="widget">
                     <h3 class="heading">Resources</h3>
                     <ul class="links list-unstyled">
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4">
                  <div class="widget">
                     <h3 class="heading">Contact</h3>
                     <ul class="list-unstyled quick-info links">
                        <li class="email"><a href="#">mail@example.com</a></li>
                        <li class="phone"><a href="#">+1 222 212 3819</a></li>
                        <li class="address"><a href="#">43 Raymouth Rd. Baltemoer, London 3910</a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- 메인 - 고객센터 배너 끝 -->



      <div class="inner dark">
         <div class="container">
            <div class="row text-center">
               <div class="col-md-8 mb-3 mb-md-0 mx-auto">
                  <p>Copyright &copy;
                     <script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed
                     with love by <a href="https://untree.co" class="link-highlight">Untree.co</a>
                     <!-- License information: https://untree.co/license/ -->Distributed By <a
                        href="https://themewagon.com" target="_blank">ThemeWagon</a>
                  </p>
               </div>

            </div>
         </div>
      </div>
   </div>

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
      // ===================1번째 수정>
      // $(function changeLangSelect() {
      //    var langSelect = document.getElementById("selectbox");

      //    var selectValue1 = langSelect.options[langSelect.selectedIndex].value;
      //    $("#selectbox option:selected").val();
      //    if(selectValue1 == 'images/hero-slider-1.jpg'){
      //             $('images/hero-slider-1.jpg').show();
      //          }
      //          else{                   
      //             $('images/hero-slider-2.jpg').show();          
      //          }  
      // })
      // <===================1. 끝
      // ====================2번째 수정>
      // function selectChange(){
      //    var img = document.querySelector(".slides");
      //    switch(value){
      //       case "l1": img.src="images/hero-slider-1.jpg";break;
      //       case "l2": img.src="images/hero-slider-2.jpg";break;
      //    }
      // }
      // <====================2. 끝
      // document.getElementById("selectbox");
      // 1. selectbox 값 변경 이벤트 찾기 - 이벤트

      // -- 함수 --
      // 2. selectBox의 값을 가져오기
      // 3. 조건문 활용해서 값 비교
      // 4. 이미지 영역의 사진 바꿔주기

      // ==================3번째 수정>
      //   let changeimg = document.getElementById("changeimg");
      //   let mylmg = document.getElementById("myimg");

      //   function changeimage(){
      //    let index = changeimg.selectedIndex;
      //    mylmg.src = changeimg.options[index].value;

      //   }
      //   changeimage();
      //   changeimg.onchange = changeimage;
      // ==================3번째 끝>
      // ==================4번째 수정>
      //   $("select[name=selectbox]").change(function(){
      //     if($(this).val()='l1'){     

      // ===================4번째 끝

      $(function () {

         var slides = $('.slides'),
            images = slides.find('img');

         images.each(function (i) {
            $(this).attr('data-id', i + 1);
         })

         var typed = new Typed('.typed-words', {
            strings: ["San Francisco.", " Paris.", " New Zealand.", " Maui.", " London."],
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

      // =======================5번째 수정>
      //$("#selectbox").change(function () {
      //   if ($(this).val() == "l1") {
      //      $('.slides').attr("src", "images/hero-slider-1.jpg");
      //   } else if ($(this).val() == "l2") {
      //      $('.slides').attr("src", "images/hero-slider-2.jpg");
      //   } else if ($(this).val() == "l3") {
      //     $('.slides').attr("src", "images/hero-slider-3.jpg");
      //   } else {
      //      $('.slides').attr("src", "images/hero-slider-4.jpg");
      //   }
      // });
      // <=======================5번째 끝
   </script>

   <script src="js/custom.js"></script>

   <!-- 메인 네비 수정본 script 시작 -->
   <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
   <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>
   <script src="js/main_nav_correction.js"></script>
   <!-- 메인 네비 수정본 script 끝 -->

   <!-- 메인 대표여행지 script 시작 -->
 
   <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
   <script src="js/main_best_travel_react.js"></script>

   <!-- 메인 대표여행지 script 끝 -->

   <!-- 메인 사진첩 script 시작 -->
   <script src='https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.4.5/swiper-bundle.min.js'></script>
   <script src="js/main_gallery_react.js"></script>
   <!-- 메인 사진첩 script 끝 -->


</body>

</html>