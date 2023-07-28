<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="model.InfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>CodePen - Instagram Profile Layout with CSS Grid &amp; Flexbox</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
	<link rel="stylesheet" href="css/정보거래_카테고리별.css">

	<!-- main head start -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="../favicon.png">

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
	<link rel="stylesheet" href="font/icomoon/style.css">
	<link rel="stylesheet" href="font/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="css/daterangepicker.css">
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">

	<!-- main head end -->

	<style type="text/css">
	.gallery-item{
		height: 285px;
		width: 285px;
		
	}
	
	div.gallery-item img {
		height: 100%;
		width: 100% !important;
	}
	
	</style>

</head>



<body>

<%
String info_cate = request.getParameter("info_cate");

%>


	<!-- ct name start -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h1 class="section-title text-center"><%=info_cate%>정보거래</h1>
				</div>
			</div>
			<!-- ct name end -->

			<!-- 썸네일 사진들 -->
			<main>

				<div class="container2">

					<div class="gallery">
						<!-- 사진 썸네일 알고리즘 -->
							<%
							InfoDAO idao = new InfoDAO();
							ArrayList<InfoDTO> pic_list = idao.showCateInfo(info_cate);
							
							
							for (int i = 0; i < pic_list.size(); i++) {
								int info_num = pic_list.get(i).getInfo_num();
								String info_title = pic_list.get(i).getInfo_title();
								String info_brief = pic_list.get(i).getInfo_brief();
								int info_fee = pic_list.get(i).getInfo_fee();
								String infouser_id = pic_list.get(i).getUser_id();
								
								
								String htmlString = idao.show(info_num);
								// 정규 표현식 패턴
								String pattern = "<img\\s+[^>]*>";
			
								// 정규 표현식 패턴에 매칭되는 부분을 찾아서 저장할 변수
								StringBuilder imgTags = new StringBuilder();
			
								// 정규 표현식에 매칭되는 부분을 찾기 위한 Matcher 객체 생성
								Matcher matcher = Pattern.compile(pattern).matcher(htmlString);
			
								// 맨 앞에있는 img태그만
								if (matcher.find()) {
									imgTags.append(matcher.group());
								}
								
								// imgTags가 비어있는 경우, 다음 반복으로 넘어감
							    if (imgTags.toString().isEmpty()) {
							        continue;
							    }
							%>

						<a href="Info_DetailPage.jsp?info_num=<%=info_num%>&info_title=<%=info_title%>&info_brief=<%=info_brief%>&info_fee=<%=info_fee%>&infouser_id=<%=infouser_id%>">
							<div class="gallery-item" tabindex="0">
									<%=imgTags%>							
								<div class="gallery-item-info">
									<ul>
										<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
												class="fas fa-heart" aria-hidden="true"></i> 56</li>
										<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
												class="fas fa-comment" aria-hidden="true"></i> 2</li>
									</ul>
								</div>
							</div>
						</a>						
						
						<%} %>

					<!-- 	<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1497445462247-4330a224fdb1?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 89</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 5</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1426604966848-d7adac402bff?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-type">

								<span class="visually-hidden">Gallery</span><i class="fas fa-clone"
									aria-hidden="true"></i>

							</div>

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 42</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 1</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1502630859934-b3b41d18206c?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-type">

								<span class="visually-hidden">Video</span><i class="fas fa-video"
									aria-hidden="true"></i>

							</div>

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 38</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 0</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1498471731312-b6d2b8280c61?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-type">

								<span class="visually-hidden">Gallery</span><i class="fas fa-clone"
									aria-hidden="true"></i>

							</div>

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 47</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 1</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1515023115689-589c33041d3c?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 94</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 3</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1504214208698-ea1916a2195a?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-type">

								<span class="visually-hidden">Gallery</span><i class="fas fa-clone"
									aria-hidden="true"></i>

							</div>

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 52</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 4</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1515814472071-4d632dbc5d4a?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 66</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 2</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1511407397940-d57f68e81203?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-type">

								<span class="visually-hidden">Gallery</span><i class="fas fa-clone"
									aria-hidden="true"></i>

							</div>

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 45</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 0</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1518481612222-68bbe828ecd1?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 34</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 1</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1505058707965-09a4469a87e4?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 41</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 0</li>
								</ul>

							</div>

						</div>

						<div class="gallery-item" tabindex="0">

							<img src="https://images.unsplash.com/photo-1423012373122-fff0a5d28cc9?w=500&h=500&fit=crop"
								class="gallery-image" alt="">

							<div class="gallery-item-type">

								<span class="visually-hidden">Video</span><i class="fas fa-video"
									aria-hidden="true"></i>

							</div>

							<div class="gallery-item-info">

								<ul>
									<li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i
											class="fas fa-heart" aria-hidden="true"></i> 30</li>
									<li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
											class="fas fa-comment" aria-hidden="true"></i> 2</li>
								</ul>

							</div>

						</div> -->

					</div>
					<!-- End of gallery -->

					<div class="loader"></div>

				</div>
				<!-- End of container -->

			</main>
			<!-- partial -->
			<script src="js/script.js"></script>


			<!-- main script start============================================ -->
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
			<!-- main script end============================================ -->

</body>

</html>