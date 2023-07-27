<%@page import="model.InfoDTO"%>
<%@page import="model.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script async
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVZvJsIiCZbQU6t85J6Rm1oBHHtRh_5d8&libraries=places&callback=initMap">
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int info_num = Integer.parseInt(request.getParameter("info_num"));
	InfoDAO idao = new InfoDAO();
	InfoDTO show_info = idao.showInfoSelect(info_num);
	%>

	<!-- 지도가 표시 -->
	<div id="map" style="height: 400px;"></div>


	<%=show_info.getInfo_content()%>
	
	 <script>
        // JSP 페이지에서 받아온 위도와 경도 값
        var latValue = <%=show_info.getInfo_lat()%>;
        var lngValue = <%=show_info.getInfo_lng()%>;

        // 구글 지도 API 스크립트 로딩 후 실행될 콜백 함수입니다.
        function initMap() {
            // 위도와 경도를 기준으로 지도의 중심 위치를 설정합니다.
            var mapCenter = { lat: latValue, lng: lngValue };

            // 지도 생성 및 설정
            var map = new google.maps.Map(document.getElementById('map'), {
                center: mapCenter,
                zoom: 12
            });

            // 선택한 위치에 마커 생성
            var marker = new google.maps.Marker({
                map: map,
                position: mapCenter,
                title: '선택한 위치'
            });
        }
    </script>


</body>
</html>