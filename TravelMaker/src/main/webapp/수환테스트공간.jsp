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
   src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVZvJsIiCZbQU6t85J6Rm1oBHHtRh_5d8&libraries=places,marker&callback=initMap">
   
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

   <form action="ConsultCon.do" method="post">



      <textarea name="cons_content" id="summernote"></textarea>
      <div class="div_2">
         <!-- 사용자가 생성한 마커 정보를 서버로 전송하기 위한 HTML Form -->
         <input type="hidden" id="lat-input" name="lat"> 
         <input type="hidden" id="lng-input" name="lng"> 
         <input class="input_3" type="submit" value="작성완료">
      </div>

   </form>

   <!-- 사용자의 위치를 검색할 수 있는 검색 박스를 추가할 입력 요소 -->

   <!-- 지도가 표시될 요소 -->


   <input id="search-location" type="text" placeholder="장소를 검색하세요">
   <div id="map" style="height: 800px;"></div>
   <button onclick="addMarker()" style="position: relative">마커 추가</button>
   <button onclick="removeLastMarker()" style="position: relative">마커 삭제</button>




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
      let map;
      let markers = []; // 여러 개의 마커를 관리하기 위한 배열
      let markerCount = 0; // 마커 숫자를 위한 변수 초기화
      let lastDeletedMarkerCount = 0;

      // 구글 지도 API 스크립트 로딩 후 실행될 콜백 함수입니다.
      function initMap() {
         // 사용자의 위치를 검색할 수 있는 검색 박스를 추가합니다.
         const input = document.getElementById('search-location');
         const searchBox = new google.maps.places.SearchBox(input);

         // 지도 생성 및 설정
         map = new google.maps.Map(document.getElementById('map'), {
            center : {
               lat : 37.5,
               lng : 127
            }, // 지도 초기 중심 위치
            zoom : 15
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

            // 검색된 첫 번째 위치로 지도의 중심 이동
            map.setCenter(places[0].geometry.location);
            map.setZoom(12); // 지도 줌 레벨 설정
         });
      }
      // 맞춤 HTML 마커를 생성하는 함수
      function createHTMLMarker(position, content) {
         const priceTag = document.createElement("div");
         priceTag.className = "price-tag";
         priceTag.textContent = content;

         const customMarker = new google.maps.Marker(
               {
            	   
                  position : position,
                  map : map,
                  icon : {
                     url : 'data:image/svg+xml;charset=UTF-8,'
                           + encodeURIComponent(` <svg width="200" height="200" xmlns="http://www.w3.org/2000/svg"><image href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAYAAAD0eNT6AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDcuMS1jMDAwIDc5LmRhYmFjYmIsIDIwMjEvMDQvMTQtMDA6Mzk6NDQgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCAyMy4wIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0NjkxMDNGQTI5RjYxMUVFQkIzNjg0OEE4QUU4ODA0RCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0NjkxMDNGQjI5RjYxMUVFQkIzNjg0OEE4QUU4ODA0RCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjQ2OTEwM0Y4MjlGNjExRUVCQjM2ODQ4QThBRTg4MDREIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjQ2OTEwM0Y5MjlGNjExRUVCQjM2ODQ4QThBRTg4MDREIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+3QIWWwAAhm9JREFUeNrsnQec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" height="200" width="200" /><text font-size="80" font-weight="bold" text-anchor="middle" alignment-baseline="middle" transform="translate(100, 100)">${content}</text></svg>`),
                     scaledSize : new google.maps.Size(40, 40), // 아이콘 크기를 조정합니다.
                     anchor : new google.maps.Point(15, 15)
                  // 아이콘 중심점을 조정합니다.
                  },
                  draggable : true
               // 마커를 드래그 가능하도록 설정합니다.
               });

         // 드래그 이벤트 리스너를 추가합니다.
         google.maps.event.addListener(customMarker, 'dragend', function() {
            const position = customMarker.getPosition();
            customMarker.setPosition(position);
         });

         return customMarker;
      }

       function updateHiddenFields() {
           // 각각의 위치 정보를 문자열로 저장합니다.
           const latPositions = markers.map(marker => marker.getPosition().lat()).join(';');
           const lngPositions = markers.map(marker => marker.getPosition().lng()).join(';');

           // 문자열을 숨겨진 필드에 설정합니다.
           document.getElementById('lat-input').value = latPositions;
           document.getElementById('lng-input').value = lngPositions;
       }
      
      function addMarker() {
         markerCount++; // 마커가 추가될 때마다 숫자를 증가시킵니다.

         // 마지막으로 삭제된 마커의 숫자보다 더 큰 숫자의 마커를 생성합니다.
         if (markerCount <= lastDeletedMarkerCount) {
            markerCount = lastDeletedMarkerCount + 1;
         }

         const center = map.getCenter();
         const marker = createHTMLMarker(center, markerCount.toString());
         markers.push(marker);

           // 위치 정보를 업데이트합니다.
            updateHiddenFields();

      }
      function removeLastMarker() {
         if (markers.length > 0) {
            const lastMarker = markers.pop(); // 배열에서 가장 마지막 요소를 가져옴
            lastMarker.setMap(null); // 가장 최근에 추가된 마커를 지도에서 제거
            lastDeletedMarkerCount = parseInt(lastMarker.getLabel()); // 마지막으로 삭제된 마커의 번호를 기억합니다.
            markerCount--; // 삭제된 마커의 숫자를 감소시킵니다.

              // 위치 정보를 업데이트합니다.
                updateHiddenFields();

         }
      }
   </script>
   <!-- note script end -->

   <br>



   <!-- main 하단 end -->
</body>
</html>