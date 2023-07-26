<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CodePen - Instagram Profile Layout with CSS Grid &amp;
	Flexbox</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="./정보거래_카테고리별.css">
<!--  href="style.css" => 정보거래_카테고리별.css -->

<!-- main head start -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="../favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
	rel="stylesheet">


<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/owl.carousel.min.css">
<link rel="stylesheet" href="./css/owl.theme.default.min.css">
<link rel="stylesheet" href="./css/jquery.fancybox.min.css">
<link rel="stylesheet" href="./fonts/icomoon/style.css">
<link rel="stylesheet" href="./fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="./css/daterangepicker.css">
<link rel="stylesheet" href="./css/aos.css">
<link rel="stylesheet" href="./css/style.css">
<!-- main head end -->


<!-- =style 임시= -->
<style>
.container2 {
	/* background-color: beige; */
	/* border: 1px ridge rgb(151, 151, 151); */
	background: #fff;
	padding: 24px;
	border-radius: 13px;
	position: relative;
	margin: 0 12px;
	box-shadow: 0 10px 16px 0 #cde4dd;
}

.ctbtn {
	border: none;
	background-color: rgb(206, 230, 240);
	border-radius: 15px;
}

strong {
	font-size: large;
}
</style>

<!-- ======= -->
</head>

<body>
	<!-- ct name start -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h1 class="section-title text-center">마이페이지</h1>
				</div>
			</div>
			<!-- ct name end -->

			<!-- header start -->
			<header>

				<div class="container">

					<div class="profile">

						<div class="profile-image">

							<img
								src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces"
								alt="">

						</div>

						<div class="profile-user-settings">

							<h1 class="profile-user-name">janedoe_</h1>

							<button class="btn profile-edit-btn">5000캐시</button>
							<button>충전하기</button>

							<button class="btn profile-settings-btn"
								aria-label="profile settings">
								<i class="fas fa-cog" aria-hidden="true"></i>
							</button>

						</div>

						<!-- <div class="profile-stats">

                            <ul>
                                <li><span class="profile-stat-count">4.5</span> 리뷰평점</li>
                                <li><span class="profile-stat-count">22</span> 리뷰수</li>
                                <li><span class="profile-stat-count">35</span> 고용수</li>
                            </ul>

                        </div> -->

						<div class="profile-bio">

							<p>
								<span class="profile-real-name">Jane Doe</span> <br> Lorem
								ipsum dolor sit, amet consecteturadipisicing elit 📷✈️🏕️
							</p>

						</div>

					</div>

				</div>

			</header>
			<!-- header end -->

			<!-- 나의 정보거래 내역 시작 -->
			<main>
				<div class="container2">
					<strong> 나의 정보거래 내역</strong>
					<p>
						<b>[전체]</b> 총 3건
					</p>
					<p>
						<button class="ctbtn">전체</button>
						<button class="ctbtn">판매내역</button>
						<button class="ctbtn">구매내역</button>
					</p>
					<div class="gallery">

						<div class="gallery-item" tabindex="0">

							<img
								src="https://images.unsplash.com/photo-1511765224389-37f0e77cf0eb?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-info">

								<ul>
									<li>판매자 : test</li>
								</ul>

							</div>
						</div>

						<div class="gallery-item" tabindex="0">

							<img
								src="https://images.unsplash.com/photo-1497445462247-4330a224fdb1?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-info">

								<ul>
									<li>자세히보기</li>
								</ul>

							</div>
						</div>

						<div class="gallery-item" tabindex="0">

							<img
								src="https://images.unsplash.com/photo-1426604966848-d7adac402bff?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-info">
								<ul>
									<li>자세히보기</li>
								</ul>
							</div>

						</div>
						<!-- End of gallery -->

						<div class="loader"></div>

					</div>
					<!-- End of container -->
			</main>
			<!-- 나의 정보거래 내역 끝 -->

			<!-- partial -->
			<script src="./script.js"></script>

			<!-- main script start============================================ -->
			<script src="./js/jquery-3.4.1.min.js"></script>
			<script src="./js/popper.min.js"></script>
			<script src="./js/bootstrap.min.js"></script>
			<script src="./js/owl.carousel.min.js"></script>
			<script src="./js/jquery.animateNumber.min.js"></script>
			<script src="./js/jquery.waypoints.min.js"></script>
			<script src="./js/jquery.fancybox.min.js"></script>
			<script src="./js/aos.js"></script>
			<script src="./js/moment.min.js"></script>
			<script src="./js/daterangepicker.js"></script>

			<script src="./js/typed.js"></script>
			<!-- <script>
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
                                $('.slides img[data-id="' + arrayPos + '"]').addClass('active');
                            }

                        });
                    })
                </script> -->

			<script src="./js/custom.js"></script>
			<!-- main script end============================================ -->
</body>

</html>