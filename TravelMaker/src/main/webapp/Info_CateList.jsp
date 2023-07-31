<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="model.InfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	.untree_co-section{
		margin-top: 94px;
	}
	</style>

</head>



<body>

<%
String info_cate = request.getParameter("info_cate");

%>

	<jsp:include page="Nav.jsp"></jsp:include>

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

						<a class="reqlogin" href="Info_DetailPage.jsp?info_num=<%=info_num%>&info_title=<%=info_title%>&info_brief=<%=info_brief%>&info_fee=<%=info_fee%>&infouser_id=<%=infouser_id%>">
							<div class="gallery-item" tabindex="0">
									<%=imgTags%>							
								<div class="gallery-item-info">
									<ul>
									<%int buy = idao.countBuy(pic_list.get(i).getInfo_num()); %>
										<li class="gallery-item-likes"><span class="visually-hidden"></span>구매횟수 : <%=buy%></li>
									</ul>
								</div>
							</div>
						</a>						
						
						<%} %>


					</div>
					<!-- End of gallery -->

					<div class="loader"></div>

				</div>
				<!-- End of container -->

			</main>
			<!-- partial -->
				<jsp:include page="Footer.jsp"></jsp:include>
				
<script>
  // 알림 메시지를 표시하는 함수를 정의합니다.
  function showAlertMessage() {
    alert("로그인하세요"); // 원하는 알림 메시지로 변경하세요.
  }

  // "받은컨설팅" 링크에 이벤트 리스너를 추가합니다.
  const reqLoginLinks = document.getElementsByClassName("reqlogin");
  for (let i = 0; i < reqLoginLinks.length; i++) {
    reqLoginLinks[i].addEventListener("click", function(event) {
      // 'info' 변수가 'null'인지 확인합니다.
      if (${info == null }) {
        event.preventDefault(); // 링크의 기본 동작(지정된 URL로 이동)을 막습니다.
        showAlertMessage(); // 알림 메시지를 표시합니다.
      }
    });
  }
</script>
			
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