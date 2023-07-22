<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script async
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVZvJsIiCZbQU6t85J6Rm1oBHHtRh_5d8&libraries=places&callback=initMap">	
</script>
</head>
<body>

	<!-- 사용자의 위치를 검색할 수 있는 검색 박스를 추가할 입력 요소 -->
	<input id="search-location" type="text" placeholder="장소를 검색하세요">

	<!-- 지도가 표시될 요소 -->

	
	<div id="map" style="height: 400px;"></div>

	<!-- 사용자가 생성한 마커 정보를 서버로 전송하기 위한 HTML Form -->
	<form id="marker-form" action="save_marker.jsp" method="post">
		<input type="hidden" id="lat-input" name="lat"> <input
			type="hidden" id="lng-input" name="lng">
		<button type="submit">마커 저장</button>
	</form>

	<script>
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
			});
		}
	</script>

</body>
</html>