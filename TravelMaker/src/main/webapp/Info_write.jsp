<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- note head tart-->

<title>글쓰기</title>
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<style>
body {
	padding: 1rem;
}

h1 {
	text-align: center;
}

button {
	float: right;
	color: white;
	background-color: skyblue;
	border: none;
	padding: 10px 50px;
}

#userInfoContainer {
	display: flex;
	justify-content: flex-end;
	gap: 1rem;
}

#inputTitle {
	width: 100%;
	font-size: x-large;
	/* font-size: xx-large; */
}
</style>
<!-- note head end-->


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

</head>

<body>

	<!--  nav start -->
	<nav class="site-nav">
		<div class="container">
			<div class="site-navigation">
				<a href="index.html" class="logo m-0"> Travel Maker <span
					class="text-primary"></span></a>
				<ul
					class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
					<li class="active"><a href="#">견적요청</a></li>
					<li><a href="#">받은견적</a></li>
					<li><a href="#">정보거래</a></li>
					<li><a href="#">커뮤니티</a></li>
				</ul>
				<ul
					class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
					<li class="has-children"><a href="#">채팅</a></li>
					<li class="has-children"><a href="#">프로필</a>
						<ul class="dropdown">
							<li><a href="elements.html">받은견적</a></li>
							<li><a href="#">마이페이지</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--  nav end -->



	<!-- main img end -->


	<div class="row text-center justify-content-center mb-5">
		<div class="col-lg-7">
			<h1 class="section-title text-center">정보 공유 게시글 등록하기</h1>
		</div>
	</div>

	<!-- note start-->
	<form action="InfowriterCon.do">
	카테고리 : <select name="info_cate">
		<option value="명소">명소</option>
		<option value="맛집">맛집</option>
		<option value="숙소">숙소</option>
	</select>
	제목 : <input type="text" name="info_title">
	내용 : <textarea name="info_content" id="summernote"></textarea>
	요금 : <input type="text" name="info_fee">
	
	<input type="submit">
	</form>


<!-- 	<div id="userInfoContainer">
		<div>
			<label for="inputid"> 아이디 : </label> <input id="inputid" />
		</div>
		<div>
			<label for="inputcash"> 가격 설정 : </label> <input id="inputcash" />
		</div>
	</div>
	<input id="inputTitle" placeholder="제목을 작성해주세요" />
	<div id="summernote"></div>
	<textarea name="boardcontents" id="summernote">
				</textarea>
	<button onclick="summit()">완료</button> -->
	<!-- note end -->

	<!-- note script start-->
	<script>
		// 메인화면 페이지 로드 함수
		$(document).ready(function() {
			$('#summernote').summernote({
				placeholder : '내용을 작성하세요',
				height : 400,
				maxHeight : 400
			});
		});

		// summit 함수 만들기
		/*     function summit() {

		 const button = event.srcElement;
		 button.disabled = true;

		 // nickname, password, content를 가지고와서 formdata 로 전송
		 const inputid = document.getElementById('inputid').value;
		 const inputcash = document.getElementById('inputcash').value;
		 const inputTitle = document.getElementById('inputTitle').value;
		 const content = $('#summernote').summernote('code');
		 console.log(inputid);
		 console.log(inputcash);
		 console.log(inputTitle);
		 console.log(content);
		
		
		 const formData = new FormData;
		 formData.append("inputid", inputid);
		 formData.append("inputcash", inputcash);
		 formData.append("inputTitle", inputTitle);
		 formData.append("content", content);
		

		 const httpRequest = new XMLHttpRequest();
		 httpRequest.onreadystatechange = () => {
		 if (httpRequest.readyState === XMLHttpRequest.DONE) {
		 if (httpRequest.status === 200) {
		 console.log(httpRequest.response);
		 location.href = "InfowriterCon";
		 } else {
		 alert("게시물 등록중 오류가 발생했습니다.");
		 button.disabled = false;
		 }
		 }
		 }
		 httpRequest.open('post', 'InfowriterCon', true);
		 httpRequest.send(formData);

		 } */
	</script>
	<!-- note script end -->

	<br>

	<!-- main 하단 start -->
	<div class="site-footer">
		<div class="inner first">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-4">
						<div class="widget">
							<h3 class="heading">About Tour</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
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
								<li class="address"><a href="#">43 Raymouth Rd.
										Baltemoer, London 3910</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="inner dark">
			<div class="container">
				<div class="row text-center">
					<div class="col-md-8 mb-3 mb-md-0 mx-auto">
						<p>
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							. All Rights Reserved. &mdash; Designed with love by <a
								href="https://untree.co" class="link-highlight">Untree.co</a>
							<!-- License information: https://untree.co/license/ -->
							Distributed By <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- <div id="overlayer"></div>
    <div class="loader">
        <div class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div> -->

	<!-- main 하단 end -->

</body>
</html>
