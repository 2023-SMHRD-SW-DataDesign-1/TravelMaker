<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="model.InfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

<style>
/* .ct_btn {
            position: absolute;
            left: 1350px;
            padding: 10px 30px;
            position: fixed;
        } */
.write_btn {
	position: fixed;
	bottom: 50px;
	right: 50px;
	border: none;
	border-radius: 16px;
	background: royalblue;
	color: white;
	padding: 18px;
	font-weight: bold;
	box-shadow: 0px 5px 15px gray;
	cursor: pointer;
	font-size: 16px;
	z-index: 2;
}
.untree_co-section{
	margin-top: 94px;
}
#test111 {
	height: 500px;
	width: 200px;

}
#test111 img{
	height: 100%;
}
</style>

</head>

<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->
	
	
	<a href="Info_write.jsp"><button class="write_btn">작성하러가기
			💬</button></a>

	<!-- 사진 추천 카테고리 start -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h2 class="section-title text-center">나만 알고있던 인스타감성 포토스팟📸</h2>
					<a href="Info_CateList.jsp?info_cate=사진">
						<button>보러가기💬</button>
					</a>
				
				</div>
			</div>

			<div class="owl-carousel owl-3-slider">
			
			<!-- 사진 썸네일 알고리즘 -->
				<%
				InfoDAO idao = new InfoDAO();
				String info_cate = "사진";
				ArrayList<InfoDTO> pic_list = idao.showCateInfo(info_cate);
				

				for (int i = 0; i < pic_list.size(); i++) {
					int info_num = pic_list.get(i).getInfo_num();
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

				<div class="item">
					<a class="media-thumb" href="Info_Show.jsp?info_num=<%=pic_list.get(i).getInfo_num()%>">
						<div class="media-text">

							<h3><%=pic_list.get(i).getInfo_title()%></h3>

							<span class="location">-</span>
						</div> <!-- <img src="img/hero-slider-1.jpg" alt="Image" class="img-fluid"> -->

						<div id="test111">
						<%=imgTags%>
							
						</div>
					</a>
				</div>
				<%}%>
			</div>
		</div>
	</div>
	<!-- 사진 추천 카테고리 end -->

	<!-- 맛집 추천 카테고리 start -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h2 class="section-title text-center">혼자 몰래가서 배터지게 먹고오는 🥘</h2>
				</div>
					<a href="Info_CateList.jsp?info_cate=맛집">
						<button>보러가기💬</button>
					</a>
			</div>

			<div class="owl-carousel owl-3-slider">
			
			<!-- 맛집 썸네일 알고리즘 -->
			<%
			info_cate = "맛집";
			ArrayList<InfoDTO> food_list = idao.showCateInfo(info_cate);
			
			for (int i = 0; i < food_list.size(); i++) {
				int info_num = food_list.get(i).getInfo_num();
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
				
				System.out.println(imgTags.toString());
				
				// imgTags가 비어있는 경우, 다음 반복으로 넘어감
			    if (imgTags.toString().isEmpty()) {
			        continue;
			    }
			%>
			
				<div class="item">
					<a class="media-thumb" href="Info_Show.jsp?info_num=<%=food_list.get(i).getInfo_num()%>">
						<div class="media-text">
							<h3><%=food_list.get(i).getInfo_title()%></h3>
							<span class="location">-</span>
						</div> 
						<div id="test111" >
						<%=imgTags%>							
						</div>
					</a>
				</div>				
				<%}%>
			</div>

		</div>
	</div>
	<!-- 맛집 추천 카테고리 end -->


	<!-- 숙소 추천 카테고리 start -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h2 class="section-title text-center">공유금지🤫 구름위에서 자는거처럼 편안하게🏡</h2>
				</div>
					<a href="Info_CateList.jsp?info_cate=숙소">
						<button>보러가기💬</button>
					</a>
			</div>

			<div class="owl-carousel owl-3-slider">
			
			<!-- 숙소 알고리즘 -->
			<%
			info_cate = "숙소";
			ArrayList<InfoDTO> hotel_list = idao.showCateInfo(info_cate);
			
			for (int i = 0; i < hotel_list.size(); i++) {
				int info_num = hotel_list.get(i).getInfo_num();
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

				<div class="item">
						<a class="media-thumb" href="Info_Show.jsp?info_num=<%=hotel_list.get(i).getInfo_num()%>">
						<div class="media-text">
							<h3><%=hotel_list.get(i).getInfo_title()%></h3>
							<span class="location">-</span>
						</div> 
						<div id="test111" >
						<%=imgTags%>							
						</div>
					</a>
				</div>				
				<%}%>
			</div>

		</div>
	</div>
	<!-- 숙소 추천 카테고리 end -->


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

	<script src="js/custom.js"></script>
</body>

</html>