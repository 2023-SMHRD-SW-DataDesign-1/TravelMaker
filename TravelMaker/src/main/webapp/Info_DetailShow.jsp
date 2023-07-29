<%@page import="model.InfoDTO"%>
<%@page import="model.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>CodePen - CSS Animation of opening modal</title>
  <link rel="stylesheet" href="css/정보거래열람페이지.css">
  <!-- 지도 관련 link 시작 -->
  <!-- include libraries(jQuery, bootstrap) -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- include summernote css/js -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <script async
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVZvJsIiCZbQU6t85J6Rm1oBHHtRh_5d8&libraries=places&callback=initMap">
    </script>
  <!-- 지도 관련 link 끝 -->

  <!-- 지도 관련 style1 시작 -->
  <style>
    h1 {
      text-align: center;
    }

    /* button {
         float: right;
         color: white;
         background-color: skyblue;
         border: none;
         padding: 10px 30px;
      }
       */
    .input_3 {
      /* 전송버튼 */
      height: 55px;
      border-top: none;
      border-left: none;
      border-right: none;
      border-bottom: 3px solid black;
      padding: 10px 30px;
    }

    .div_2 {
      /* 오른쪽하단 고정 */
      position: absolute;
      right: 20px;
      /* margin-left: 1500px; */
    }

    .price-tag {
      background-color: #4285F4;
      border-radius: 8px;
      color: #FFFFFF;
      font-size: 14px;
      padding: 10px 15px;
      position: relative;
    }

    .price-tag::after {
      content: "";
      position: absolute;
      left: 50%;
      top: 100%;
      transform: translate(-50%, 0);
      width: 0;
      height: 0;
      border-left: 8px solid transparent;
      border-right: 8px solid transparent;
      border-top: 8px solid #4285F4;
    }

    [class$=api-load-alpha-banner] {
      display: none;
    }
  </style>
  <!-- 지도 관련 style1 끝  -->
  <!-- 지도 관련 style2 시작 -->
  <style>
    /*    */
    .editor-contents {
      height: 800px;
      padding-bottom: 50px;
      /* margin-top: 50px; */
      width: 100%;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: row;
      flex-wrap: wrap;
    }

    #tip-title-box {
      width: 100%;
      display: flex;
      justify-content: center;
    }

    #tip-title {
      width: 700px;
      height: 40px;
      border: 1px #D8D8D8 solid;
      border-radius: 5px;
      margin: 0;
      padding: 0 10px;
      margin-bottom: 10px;
      font-family: 'Apple SD Gothic Neo';
      font-size: 14px;
    }

    #editor-box {
      width: 800px;
      height: 100%;
      display: inline-block
    }

    #btn-box-center {
      width: 800px;
    }

    #cancel-btn {
      width: 160px;
      height: 40px;
      border-radius: 7px;
      border: 1px #D8D8D8 solid;
      float: left;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    #submit-btn {
      width: 160px;
      height: 40px;
      border-radius: 7px;
      background-color: #5882FA;
      color: white;
      float: right;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    #map {
      /* top: 100px; */
      height: 300px;
      width: 800px;
      /* 지도랑 나란히 정렬 */
      display: inline-block
    }

    #search-location {
      width: 170px;
      height: 40px;
      font-size: 14px;
      border: 1px solid #535353;
      background-color: rgb(230, 230, 230);
    }

    #btn_group {
      /* text-align: center;
         display: inline-block; */
      display: flex;
      justify-content: center;
    }

    /*  */
    #test_btn1 {
      border-top-left-radius: 5px;
      border-bottom-left-radius: 5px;
      margin-right: 0px;
    }

    #test_btn2 {
      border-top-right-radius: 5px;
      border-bottom-right-radius: 5px;
      margin-left: -1px;
    }

    #btn_group button {
      /* #5882FA; */
      border: 1px solid #5882FA;
      background-color: rgba(0, 0, 0, 0);
      color: #5882FA;
      padding: 5px;
    }

    #btn_group button:hover {
      color: white;
      background-color: #5882FA;
    }

  </style>
  <!-- 지도관련 style2 끝 -->
  <style>
    #wrap_boxContent{
      width:1200px;
      background-color: gray;
    }

  </style>
</head>

<body>

	<%
	int info_num = 113;
	// int info_num = Integer.parseInt(request.getParameter("info_num"));
	InfoDAO idao = new InfoDAO();
	InfoDTO show_info = idao.showInfoSelect(info_num);
	%>

  <div>
    <div class="popup-page">
      <div class="page__container">
        <div class="popup-page-wrap-content">
          <h1>고객이름</h1>
          <div class="summernote_content">
          <%=show_info.getInfo_content()%>
	
          </div>
          <span>가격</span>
        </div>


        <a href="#popup-article" class="open-popup">지도보기</a>
      </div>
    </div>
    <div id="popup-article" class="popup">
      <div class="popup__container">
        <a href="#" class="popup__close">
          <span class="screen-reader">close</span>
        </a>
        <div class="popup__content">
          <h1 class="popup__title r-title">The my adventure in the France and photography with Tour De France</h1>
          <!-- 지도 관련 body 시작 -->


            <div class="editor-contents">
              <div id="editor-box">
                <div id="map"></div>
         
              </div>
            </div>

        </div>
      </div>
    </div>
  </div>
  <!-- partial -->





  <!-- 지도 관련 스크립트 시작 -->
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
  <!-- 지도 관련 스크립트 끝 -->
</body>

</html>