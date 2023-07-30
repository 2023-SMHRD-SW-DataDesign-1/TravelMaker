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
	<link rel="stylesheet" href="css/main_nav.css">
	<link rel="stylesheet" href="css/style.css">
	
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
   <style>

	.main_navbar{
		display: flex;
		justify-content: space-between;
	}
	.main_navbar ul{
		list-style: none;
	}
	.main_navbar ul li{
		margin-left: 1.5rem;
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
   <style>
      /*    */
      .editor-contents {
         margin-top: 90px;
         margin-bottom: 50px;
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
         font-size: 14px;
      }

      #editor-box {
         width: 800px;
         height: 100%;
         display: inline-block
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
         font-size: 13px;
         border: 1px solid #535353;
 

         /* border: 0; */
         border-radius: 15px;
         outline: none;
         padding-left: 10px;
         background-color: rgb(253, 253, 253);
      }

      #btn_group {
         /* text-align: center;
         display: inline-block; */
         display: flex;
         justify-content: center;
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
         width: 160px;
         height: 40px;
         border-radius: 7px;
         background-color: #5882fa;
         color: white;
         text-align: center;
         font-weight: bold;
         border: none;
      }

      .div_2 {
		display: block;
		text-align: right;
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
         margin-left: 2%;
      }

      .input_1 {
         /* 제목 */
         width: 570px;
         height: 40px;
         font-size: 15px;

         border: 0;
         border-radius: 15px;
         outline: none;
         padding-left: 10px;
         background-color: rgb(233, 233, 233);
      }

      .div_3 {
         margin: 15px 25px 15px 0px;
      }

      .input_4 {
         /* 간단한 설명 */
         width: 800px;
         height: 40px;
         font-size: 15px;
         border: 0;
         border-radius: 15px;
         outline: none;
         /* padding-left: 10px; */
         background-color: rgb(230, 230, 230);
      }
      
/* 네비게이션 시작  */
.navbar-nav>li a{
	font-size: 14px;
	text-decoration: none;
}
   @media screen and (min-width: 576px){
      .container_nav{
         max-width: 540px;
         margin: 0 auto;
      }
   }
   @media screen and (min-width: 768px){
      .container_nav{
         max-width: 720px;
         margin: 0 auto;
      }
   }
   @media screen and (min-width: 992px){
      .container_nav{
         max-width: 960px;
         margin: 0 auto;
      }
   }
   @media screen and (min-width: 1200px){
      .container_nav{
         max-width: 1140px;
         margin: 0 auto;
      }
   }
  /* 네비게이션 끝 */
   </style>
</head>

<body>

<!-- 네비게이션 시작 -->

<div class="hero-anime">
   <div class="navigation-wrap bg-light start-header start-style">
      <div class="container_nav">
         <div class="row">
            <div class="col-12">
               <nav class="main_navbar navbar-expand-md navbar-light">

                  <a class="navbar_logo" href="Main.jsp" target="_blank"> <img src="/TravelMaker/img/Logo.png"
                     alt="Logo"></a>

                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav ml-auto py-4 py-md-0">

                        <c:choose>
                           <c:when
                              test="${info.user_type eq '회원' || info.user_type == null }">
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="User_Est_Send.jsp">견적요청</a></li>
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active"><a
                                 class="nav-link dropdown-toggle" data-toggle="dropdown"
                                 href="#" role="button" aria-haspopup="true"
                                 aria-expanded="false">컨설팅</a>
                                 <div class="dropdown-menu">
                                    <a class="dropdown-item" href="User_Est_Receive.jsp">받은견적서</a>
                                    <a class="dropdown-item" href="User_Consult_Receive.jsp">받은컨설팅</a>
                                 </div></li>                       
                           </c:when>
                           <c:when test="${info.user_type eq '고수' }">
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="Gosu_Est_Receive.jsp">받은견적</a></li>
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="Gosu_Est_Paid.jsp">채택된견적</a></li>
                           </c:when>
                        </c:choose>


                        <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                           class="nav-link" href="Info_main.jsp">정보거래</a></li>

                        <!-- <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                           class="nav-link" href="Est_ShowConsult.jsp">커뮤니티</a></li> -->

                        <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="MyPage_normal.jsp">마이페이지</a></li>
                                 
                        <c:choose>
                           <c:when test="${info != null }">
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="LogoutCon.do">${info.user_name}
                                    ${info.user_type}님 로그아웃</a></li>
                           </c:when>
                           <c:otherwise>
                              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
                                 class="nav-link" href="Login.jsp">로그인 / 회원가입</a></li>
                           </c:otherwise>
                        </c:choose>

                     </ul>
                  </div>

               </nav>
            </div>
         </div>
      </div>
   </div>
</div>

<!-- 네비게이션 끝 -->

   <form action="InfowriterCon.do" method="post" onsubmit="return validateForm()" class="form_wrap_google">

      <div class="editor-contents">
         <div id="editor-box">      

               <input class="input_1" type="text" name="info_title" placeholder="제목을 입력해 주세요">
               <select class="select_1" name="info_cate">
                  <option disabled selected>카테고리</option>
                  <option value="사진">사진</option>
                  <option value="맛집">맛집</option>
                  <option value="숙소">숙소</option>
               </select>
            
            <div class="div_3">
               <input class="input_4" type="text" name="info_brief" placeholder="간단한 설명을 입력해 주세요">
            </div>

            <div id="map"></div>
            <textarea name="info_content" id="summernote"></textarea>
            <div class="div_2"> 받을금액 : 
            	<input class="input_2" type="text" name="info_fee" placeholder="금액을 입력해 주세요">
               	<input type="hidden" id="lat-input" name="lat"> 
				<input type="hidden" id="lng-input" name="lng"> 
              	<input class="input_3" type="submit" value="작성완료">
            </div>
         </div>
      </div>
   </form>
   
   	<!-- 금액제한 스크립트 -->
	<script>
	  function validateForm() {
	    // input값 가져오기
	    var selectedRadio = document.querySelector('input[name="info_fee"]');
	    var chargeValue = selectedRadio.value;
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
	
	<!-- 엔터로 submit 방지 -->
	<script>
	  // Enter 키 입력 시 폼 제출 방지
	  document.addEventListener('keydown', function (event) {
	    if (event.key === 'Enter') {
	      event.preventDefault();
	    }
	  });
	</script>
   
   
   
   
   
   <!-- 사용자의 위치를 검색할 수 있는 검색 박스를 추가할 입력 요소 -->
   <!-- 지도가 표시될 요소 -->
   <input id="search-location" type="text" placeholder=" 장소를 검색해 주세요">
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

	
	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
</body>

</html>
