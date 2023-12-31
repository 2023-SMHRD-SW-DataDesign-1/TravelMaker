<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- note head tart-->

<title>글쓰기</title>
<!-- include libraries(jQuery, bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVZvJsIiCZbQU6t85J6Rm1oBHHtRh_5d8&libraries=places&callback=initMap">
        </script>

<style>
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
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/jquery.fancybox.min.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/daterangepicker.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/style.css">
<title>Tour Free Bootstrap Template for Travel Agency by
	Untree.co</title>

<style>
#map {
	top: 100px;
}
.write_main_content{
	margin-top: 130px;
}
</style>
</head>
<body>

	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->

	<form action="InfowriterCon.do" method="post" onsubmit="return validateForm()" class="write_main_content">

		<div class="div_1">
			<select class="select_1" name="info_cate">
				<option disabled selected>카테고리</option>
				<option value="사진">사진</option>
				<option value="맛집">맛집</option>
				<option value="숙소">숙소</option>
			</select> &nbsp; &nbsp; &nbsp; 제목 : 
			<input class="input_1" type="text" name="info_title" placeholder="제목을 입력해주세요">
		</div>
		<div class="div_3">
			간단한 설명 : <input class="input_4" type="text" name="info_brief" placeholder="간단한 설명을 입력해주세요">
		</div>


		<textarea name="info_content" id="summernote"></textarea>
		<div class="div_2"> 받을금액 : 
		<input class="input_2" type="text" name="info_fee" placeholder="금액을 입력해주세요"> &nbsp; &nbsp; &nbsp;
			<!-- 사용자가 생성한 마커 정보를 서버로 전송하기 위한 HTML Form -->
			<input id="search-location" type="text" placeholder="장소를 검색하세요">
			<input type="hidden" id="lat-input" name="lat"> 
			<input type="hidden" id="lng-input" name="lng"> 
			<input type="submit" value="작성완료">
			
		</div>

	</form>
	

	
	<!-- 금액제한 스크립트 -->
	<script>
	function validateForm() {
          var chargeValue;

        	 // input값 가져오기
             var selectedRadio = document.querySelector('input[name="info_fee"]');
             chargeValue = selectedRadio.value;
             var info_cate = document.getElementsByName('info_cate')[0].value;
             var info_title = document.getElementsByName('info_title')[0].value;
             var info_brief = document.getElementsByName('info_brief')[0].value;
             var info_content = document.getElementById('summernote').value;
             var info_fee = document.getElementsByName('info_fee')[0].value;
             var lat_input = document.getElementById('lat-input').value;
             var lng_input = document.getElementById('lng-input').value;
             
             if (info_cate === "" || info_title === "" || info_brief === "" || info_content === "" || info_fee === "" || lat_input === "" || lng_input === "") {
                 alert("모든 값을 입력해주세요.");
              // 폼 제출을 방지
                 return false; 
             }
          

         	 // 100으로 나눈 나머지가 0인지 확인
         	 if (chargeValue % 100 !== 0) {
          	   	alert("금액을 100단위로 입력해주세요.");
           	 	return false;
             
       		 }  
         	// 모든 필드가 채워져 있으면 폼 제출
         	 return true; 
          }
       
	</script>
	

	<!-- 사용자의 위치를 검색할 수 있는 검색 박스를 추가할 입력 요소 -->

	<!-- 지도가 표시될 요소 -->


	<div id="map" style="height: 400px;"></div>


		<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->

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

   <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



	<!-- main 하단 end -->
</body>
</html>
