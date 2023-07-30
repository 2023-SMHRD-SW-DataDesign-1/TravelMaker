<%@page import="model.UserDTO"%>
<%@page import="model.UserDAO"%>
<%@page import="model.SendDTO"%>
<%@page import="model.SendDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>CodePen - Dashboard Design with Flexbox</title>
    <!-- <link rel="stylesheet" href="./컨설팅작성Gosu_Est_Paid.css"> -->
    <!-- 세부컨설팅 link 시작 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script async
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVZvJsIiCZbQU6t85J6Rm1oBHHtRh_5d8&libraries=places&callback=initMap">
        </script>
    <!-- 세부컨설팅 link 끝 -->

    <!-- 마크도장link 시작 -->
    <link href="https://fonts.googleapis.com/css?family=Cousine&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Chonburi&display=swap" rel="stylesheet">
    <!-- 마크도장link 끝 -->

    <!-- 세부컨설팅 style1 시작 -->
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
    <!-- 세부 컨설팅 style1 끝 -->
    
    <!-- 세부 컨설팅 style2 시작 -->
    <style>
        /*    */
        .editor-contents {
            height: 700px;
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
            width: 700px;
            height: 100%;
            display: inline-block
        }

        #btn-box-center {
            width: 700px;
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
            width: 700px;
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
            /* background-color: #f2f3f7; */
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

        /* 견적요청 바 css */

        .scroll-cards {
            width: 300px;
            height: 800px;
            overflow: auto;

            /* 화면고정 */
            position: fixed;
            left: 50px;
            top: 40px;
            /* padding: 20px 0px 5px 20px; */
        }

        .card {
            background-color: #f2f3f7;
            border-radius: 4px;
            margin-top: 8px;
            margin-bottom: 5px;
            padding: 20px 0px 20px 0px;
            transition: 0.3s;
        }

        .card:hover {
            box-shadow: 5px 1px 20px 1px #ddd;
            transform: scale(0.96);
        }

        .mails {
            display: flex;
            align-items: center;
            /* justify-content: center; */
        }

        .mails>img {
            width: 35px;
            border-radius: 10px;
        }

        .mail-info {
            margin: 10px 65px;
            margin-left: 20px;
            line-height: 1.7;
            font-weight: 600;
        }


        .bottom-info {
            display: flex;
            justify-content: space-between;
        }

        p {
            margin: 0 0 10px;
        }

        .mail-names {
            color: grey;
            font-weight: bold;
            font-size: 15px;
            margin-left: 10px;
        }
    </style>
    <!-- 세부 컨설팅 style2 끝 -->

    <!-- 최종컨설팅 마크 style 시작 -->
    <style>    
        .wrapper {
            display: flex;
            justify-content: center;
            margin-top: 10vh;
        }

        .M {
            font-size: 5vmin;
            color: #ac6b4d;
            font-family: 'Chonburi', cursive;
        }

        #circ {
            font-size: 0.8vmin;
            color: #bebbbc;
            font-family: 'Cousine', monospace;
            position: relative;
            margin-top: -3vmin;
            left: 1vmin;
        }
    </style>
    <!-- 최종컨설팅 마크 style 끝 -->
</head>

<body>

	<%
	int res_num = Integer.parseInt(request.getParameter("res_num"));
	int est_num = Integer.parseInt(request.getParameter("est_num"));
	
	SendDAO sdao = new SendDAO();
	SendDTO show_est = sdao.EstSend_nomalUser(est_num);
	UserDAO udao = new UserDAO();
	UserDTO show_name = udao.showName(est_num);
	
	%>

    <div class="dashboard">
        <!-- 최종컨설팅 마크 시작 -->
        <div class="wrapper">

            <div class="M">Final Consulting</div>
        </div>
        <!-- 최종컨설팅 마크 끝 -->
        <div class="right-side">

            <div class="right-body">
                <div class="scroll-cards">
                    <!-- 사이드 1번째 박스 시작 -->
                    <div class="card">
                        <div class="mails">
                            <img src="https://randomuser.me/api/portraits/men/20.jpg" />
                            <div class="mail-names">
                                <p><%=show_name.getUser_name()%> 고객님의 견적요청</p>
                            </div>
                        </div>
                        <div class="mail-info">
                            <!-- 동남아여행 -->
                        </div>
                        <div>
                        </div>
                        <div class="check1">
                            <div class="bottom-info">

                            </div>
                            <div class="date">8:30 AM</div>
                        </div>
                    </div>
                    <!-- 사이드 1번째 박스 끝 -->

                    <!-- 사이드 2번째 박스 시작 -->
                    <div class="card">
                        <div class="mails">
                            <div class="mail-names">
                                어디로가세요?
                            </div>
                        </div>
                        <div class="mail-info">
                            일본

                            <div>
                            </div>
                            <div class="bottom-info">
                                </label>

                            </div>

                        </div>
                    </div>
                    <!-- 사이드 2번째 박스 끝 -->

                    <!-- 사이드 3번째 박스 시작 -->
                    <div class="card">
                        <div class="mails">
                            <div class="mail-names">
                                구체적인 목적지가 어디세요?
                            </div>
                        </div>
                        <div class="mail-info">
                            오사카,도쿄
                        </div>
                        <div>
                        </div>
                        <div class="bottom-info">

                        </div>
                    </div>
                    <!-- 사이드 3번째 박스 끝 -->

                    <!-- 사이드 4번째 박스 시작 -->
                    <div class="card">
                        <div class="mails">
                            <div class="mail-names">
                                예산이 얼마나 되세요?
                            </div>
                        </div>
                        <div class="mail-info">
                            150만~200만
                        </div>
                        <div>
                        </div>
                        <div class="bottom-info">

                        </div>
                    </div>
                    <!-- 사이드 4번째 박스 끝 -->

                    <!-- 사이드 5번째 박스 시작 -->
                    <div class="card">
                        <div class="mails">
                            <div class="mail-names">
                                언제 가세요?
                            </div>
                        </div>
                        <div class="mail-info">
                            7/28~8/3
                        </div>
                        <div>
                        </div>
                        <div class="bottom-info">

                        </div>
                    </div>
                    <!-- 사이드 5번째 박스 끝 -->

                    <!-- 사이드 6번째 박스 시작 -->
                    <div class="card">
                        <div class="mails">
                            <div class="mail-names">
                                고수에게 추가적인 요청사항이 있나요?
                            </div>
                        </div>
                        <div class="mail-info">
                            맛집위주
                        </div>
                        <div>
                        </div>
                        <div class="bottom-info">

                        </div>
                    </div>
                    <!-- 사이드 6번째 박스 끝 -->
                </div>

                <div class="message">


                    <!-- 지도 및 서머노트 시작 -->

                    <div id="btn_group">
                        <button id="test_btn1" onclick="addMarker()" style="position: relative">마커 추가</button>
                        <button id="test_btn2" onclick="removeLastMarker()" style="position: relative">마커 삭제</button>
                    </div>

                    <form action="ConsultCon.do?est_num=<%=est_num%>" method="post">
                        <div class="editor-contents">
                            <div id="editor-box">
                                <div id="map"></div>
                                <textarea name="cons_content" id="summernote"></textarea>
                                <!-- 사용자가 생성한 마커 정보를 서버로 전송하기 위한 HTML Form -->
                                <input type="hidden" id="lat-input" name="lat">
                                <input type="hidden" id="lng-input" name="lng">
                                <div id="btn-box-center">
                                    <div id="cancel-btn">취소</div>
                                    <input type="submit" value="컨설팅 보내기">
                                    <!-- <div id="submit-btn">컨설팅 보내기</div> -->
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- 사용자의 위치를 검색할 수 있는 검색 박스를 추가할 입력 요소 -->

                    <input id="search-location" type="text" placeholder="장소를 검색하세요">
                    <!-- 지도 및 서머노트 끝 -->

                </div>
            </div>
        </div>
  

        
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
                           + encodeURIComponent(`<svg width="200" height="200" xmlns="http://www.w3.org/2000/svg"><image href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAL0AAAEoCAYAAAANC/B0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA5BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDcuMS1jMDAwIDc5LmRhYmFjYmIsIDIwMjEvMDQvMTQtMDA6Mzk6NDQgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6Nzk2NTY2NzYyRDMyMTFFRTgyRkZCRjk3QjY5N0E1MTMiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6Nzk2NTY2NzUyRDMyMTFFRTgyRkZCRjk3QjY5N0E1MTMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIwMjIgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIwNzE1NzgzMDM1MTE4NkQ1N0FGRThGMDI3QjY5MTI1RSIgc3RSZWY6ZG9jdW1lbnRJRD0iMDcxNTc4MzAzNTExODZENTdBRkU4RjAyN0I2OTEyNUUiLz4gPGRjOmNyZWF0b3I+IDxyZGY6U2VxPiA8cmRmOmxpPlBhdmxvIFN0YXZuaWNodWs8L3JkZjps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" height="200" width="200" /><text x="2" y="-27" font-size="80" font-weight="bold" text-anchor="middle" alignment-baseline="middle" transform="translate(100, 100)">${content}</text></svg>`),
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
</body>

</html>