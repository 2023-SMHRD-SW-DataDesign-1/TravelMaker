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

 <div id="map" style="height: 400px;"></div>

<script>
    function initMap() {
      const lat = 35.150084212205414; // JSP에서 받아온 lat 값
      const lng = 126.9208624141556
; // JSP에서 받아온 lng 값

      const map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: lat, lng: lng }, // 받아온 좌표로 지도 중심 설정
        zoom: 12 // 초기 줌 레벨
      });

      // 받아온 좌표로 마커 생성
      const marker = new google.maps.Marker({
        map: map,
        position: { lat: lat, lng: lng },
        title: '마커 제목'
      });
    }
  </script>
</body>

</body>
</html>