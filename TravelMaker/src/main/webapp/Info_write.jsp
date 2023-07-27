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
<script async
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVZvJsIiCZbQU6t85J6Rm1oBHHtRh_5d8&libraries=places&callback=initMap">
	
</script>
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

.input_1 {
	/* 제목 */
	width: 500px;
	height: 40px;
	font-size: 15px;
	border: 0;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(233, 233, 233);
}

.input_2 {
	/* 받을금액 */
	height: 55px;
	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom: 3px solid black;
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

.input_4 {
	/* 간단한 설명 */
	width: 900px;
	height: 40px;
	font-size: 15px;
	border: 0;
	/* border-radius: 15px; */
	outline: none;
	/* padding-left: 10px; */
	background-color: rgb(230, 230, 230);
}

.select_1 {
	/* 카테고리 */
	width: 200px;
	padding: .8em .5em;
	border: 1px solid #999;
	font-family: inherit;
	background: url('arrow.jpg') no-repeat 95% 50%;
	border-radius: 0px;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.div_1 {
	margin: 15px 25px 15px 0px;
	padding: 10px
}

.div_2 {
	/* 오른쪽하단 고정 */
	position: absolute;
	right: 20px;

	/* margin-left: 1500px; */
}

.div_3 {
	margin: 15px 25px 15px 0px;
}
</style>
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
#map {
	top: 100px;
}
</style>
</head>
<body>

	
	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->

	<form action="InfowriterCon.do" method="post">

		<div class="div_1">
			<select class="select_1" name="info_cate">
				<option disabled selected>카테고리</option>
				<option value="명소">명소</option>
				<option value="맛집">맛집</option>
				<option value="숙소">숙소</option>
			</select> &nbsp; &nbsp; &nbsp; 제목 : <input class="input_1" type="text"
				name="info_title" placeholder="제목을 입력해주세요">
		</div>
		<div class="div_3">
			간단한 설명 : <input class="input_4" type="text" name=""
				placeholder="간단한 설명을 입력해주세요">
		</div>


		<textarea name="info_content" id="summernote"></textarea>
		<div class="div_2">
			받을금액 : <input class="input_2" type="text" name="info_fee"
				placeholder="금액을 입력해주세요"> &nbsp; &nbsp; &nbsp;
			<!-- 사용자가 생성한 마커 정보를 서버로 전송하기 위한 HTML Form -->
			<input id="search-location" type="text" placeholder="장소를 검색하세요">
			<input type="hidden" id="lat-input" name="lat"> 
			<input type="hidden" id="lng-input" name="lng"> 
			<input class="input_3" type="submit" value="작성완료">
		</div>

	</form>

	<!-- 사용자의 위치를 검색할 수 있는 검색 박스를 추가할 입력 요소 -->

	<!-- 지도가 표시될 요소 -->


	<div id="map" style="height: 400px;"></div>




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

		// 지도스크립트 시작
		let marker; // 전역 변수로 마커 변수를 선언합니다.

		// 구글 지도 API 스크립트 로딩 후 실행될 콜백 함수입니다.
		function initMap() {
			// 사용자의 위치를 검색할 수 있는 검색 박스를 추가합니다.
			const input = document.getElementById('search-location');
			const searchBox = new google.maps.places.SearchBox(input);

			// 지도 생성 및 설정
			const map = new google.maps.Map(document.getElementById('map'), {
				center : {
					lat : 37.5,
					lng : 127
				}, // 지도 초기 중심 위치
				zoom : 8
			// 초기 줌 레벨
			});

			// 지도에 검색 박스 추가
			map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

			// 검색 결과가 변경되었을 때, 해당 위치로 지도의 중심을 이동하고 마커를 생성합니다.
			searchBox.addListener('places_changed', function() {
				const places = searchBox.getPlaces();

				if (places.length === 0) {
					return;
				}

				// 검색 결과의 첫 번째 위치를 선택합니다.
				const place = places[0];

				// 선택한 위치로 지도의 중심 이동
				map.setCenter(place.geometry.location);
				map.setZoom(12); // 지도 줌 레벨 설정

				// 기존 마커가 있을 경우 제거합니다.
				if (marker) {
					marker.setMap(null);
				}

				// 선택한 위치에 마커 생성
				marker = new google.maps.Marker({
					map : map,
					position : place.geometry.location,
					title : place.name,
					draggable : true
				// 마커를 드래그할 수 있도록 설정합니다.
				});

				// 마커의 드래그 이벤트 리스너를 추가하여 마커 위치가 변경될 때 Form에 마커 정보를 업데이트합니다.
				marker.addListener('dragend', function() {
					const latInput = document.getElementById('lat-input');
					const lngInput = document.getElementById('lng-input');
					latInput.value = marker.getPosition().lat();
					lngInput.value = marker.getPosition().lng();
				});
				   // 위치 검색 후 마커를 생성했으므로, lat과 lng 값을 업데이트합니다.
	            const latInput = document.getElementById('lat-input');
	            const lngInput = document.getElementById('lng-input');
	            latInput.value = place.geometry.location.lat();
	            lngInput.value = place.geometry.location.lng();
			});
		}
	</script>
	<!-- note script end -->

	<br>



	<!-- main 하단 end -->
</body>
</html>
