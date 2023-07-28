
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CodePen - Remove Elipsis &amp; Reveal</title>
    <!-- include libraries(jQuery, bootstrap) -->
<!--     <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet"> -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<!-- 네비 bar 수정본 link 시작 -->
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel="stylesheet" href="css/main_nav_correction.css">
<!-- 네비 bar 수정본 link 끝 -->
</head>
<style>
        /* @import "//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css"; */
        .editor-contents {
            height: 700px;
            padding-bottom: 50px;
            margin-top: 50px;
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
        }

        #btn-box {
            width: 100%;
            display: flex;
            justify-content: center;
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

        .div_test {
            background-color: aliceblue;
            box-shadow: 2px 5px 15px 5px gainsboro;


            text-align: center;

            width: 100%;
            height: 100px;
        }

        .div_title {
            text-align: center;

            width: 100%;
            height: 100px;
        }
    </style>
</head>

<body>
	
	<div class="hero-anime">
		<div class="navigation-wrap bg-light start-header start-style">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-md navbar-light">

						<a class="navbar-brand" href="Main.jsp"
							target="_blank"> <img src="/TravelMaker/img/Logo.png"
							alt="Logo"></a>

						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto py-4 py-md-0">

								<c:choose>
									<c:when
										test="${info.user_type eq '회원' || info.user_type == null }">
										<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
											class="nav-link" href="Est_send.jsp">견적요청</a></li>
										<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active"><a
											class="nav-link dropdown-toggle" data-toggle="dropdown"
											href="#" role="button" aria-haspopup="true"
											aria-expanded="false">컨설팅</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="Est_nomal_responseList.jsp">받은견적서</a>
												<a class="dropdown-item" href="Est_ShowConsult.jsp">받은컨설팅</a>
											</div></li>
											<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
											class="nav-link" href="MyPage_normal.jsp">마이페이지</a></li>
									</c:when>
									<c:when test="${info.user_type eq '고수' }">
										<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
											class="nav-link" href="Est_gosu_responseList.jsp">받은견적</a></li>
										<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
											class="nav-link" href="#">채택된견적</a></li>
									</c:when>
								</c:choose>


								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
									class="nav-link" href="info_main.jsp">정보거래</a></li>

								<!-- <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4"><a
									class="nav-link" href="#">커뮤니티</a></li> -->

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
	
    <div class="div_title">
        <h2 style="padding: 30px 0;"><b>test</b>님의 견적 요청사항</h2>
    </div>

    <div class="div_test">
        <div style="border: 1px solid rgb(237, 239, 240); float: left; width: 20%; height: 100px; padding: 30px 0;">
            국가선택<br>
            <b>일본</b>
        </div>
        <div style="border: 1px solid rgb(237, 239, 240); float: left; width: 20%; height: 100px; padding: 30px 0;">
            목적지설정<br>
            <b>오사카</b>
        </div>
        <div style="border: 1px solid rgb(237, 239, 240); float: left; width: 20% ; height: 100px; padding: 30px 0;">
            예산설정<br>
            <b>100만~120만</b>
        </div>
        <div style="border: 1px solid rgb(237, 239, 240); float: left; width: 20% ; height: 100px; padding: 30px 0;">
            날짜선택<br>
            <b>7/24~7/25</b>
        </div>
        <div style="border: 1px solid rgb(237, 239, 240); float: left; width: 20% ; height: 100px; padding: 30px 0;">
            추가요청사항<br>
            <b>맛집위주</b>
        </div>
    </div>

    <div class="editor-contents">
        <div id="tip-title-box">
            <input id="tip-title" placeholder="제목을 입력해 주세요">
        </div>
        <!-- Editor -->
        <div id="editor-box">
            <div id="summernote"></div>
        </div>
        <!-- Submit -->
        <div id="btn-box">
            <div id="btn-box-center">
                <div id="cancel-btn">취소</div>
                <div id="submit-btn">견적서보내기</div>
            </div>
        </div>
       </div>
       
       <jsp:include page="Footer.jsp"></jsp:include>
       
        <script>
            $(document).ready(function () {
                $('#summernote').summernote({
                    /* 폰트선택 툴바 사용하려면 주석해제 */
                    // fontNames: ['Roboto Light', 'Roboto Regular', 'Roboto Bold', 'Apple SD Gothic Neo'],
                    // fontNamesIgnoreCheck: ['Apple SD Gothic Neo'],
                    placeholder: 'TIP 게시글을 입력해 주세요',
                    tabsize: 2,
                    height: 500,
                    resize: false,
                    lang: "ko-KR",
                    disableResizeEditor: true,
                    toolbar: [
                        /* 폰트선택 툴바 사용하려면 주석해제 */
                        // ['fontname', ['fontname']],
                        ['fontsize', ['fontsize']],
                        ['style', ['bold', 'italic', 'underline', 'clear']],
                        ['color', ['color']],
                        ['table', ['table']],
                        ['para', ['paragraph']],
                        ['insert', ['link', 'picture']],
                        ['view', []]
                    ],
                    callbacks: {   //여기 부분이 이미지를 첨부하는 부분
                        onImageUpload: function (files) {
                            RealTimeImageUpdate(files, this);
                        }
                    }
                });
                /* 초기 셋팅 ( etc -> 게시글 수정 or Default font family ) */
                $('#summernote').summernote('code', "<?php echo $positing_text ?>");
                $('.note-current-fontname').css('font-family', 'Apple SD Gothic Neo').text('Apple SD Gothic Neo');
                $('.note-editable').css('font-family', 'Apple SD Gothic Neo');
                $(".note-group-image-url").remove();    //이미지 추가할 때 Image URL 등록 input 삭제 ( 나는 필요없음 )
                $("#submit-btn").click(function () {
                    var text = $('#summernote').summernote('code');
                });
                /*
                 - 이미지 추가 func
                 - ajax && formData realtime img multi upload
                */
                function RealTimeImageUpdate(files, editor) {
                    var formData = new FormData();
                    var fileArr = Array.prototype.slice.call(files);
                    fileArr.forEach(function (f) {
                        if (f.type.match("image/jpg") || f.type.match("image/jpeg" || f.type.match("image/jpeg"))) {
                            alert("JPG, JPEG, PNG 확장자만 업로드 가능합니다.");
                            return;
                        }
                    });
                    for (var xx = 0; xx < files.length; xx++) {
                        formData.append("file[]", files[xx]);
                    }
                    $.ajax({
                        url: "./이미지 받을 백엔드 파일",
                        data: formData,
                        cache: false,
                        contentType: false,
                        processData: false,
                        enctype: 'multipart/form-data',
                        type: 'POST',
                        success: function (result) {
                            //항상 업로드된 파일의 url이 있어야 한다.
                            if (result === -1) {
                                alert('이미지 파일이 아닙니다.');
                                return;
                            }
                            var data = JSON.parse(result);
                            for (x = 0; x < data.length; x++) {
                                var img = $("<img>").attr({ src: data[x], width: "100%" });   // Default 100% ( 서비스가 앱이어서 이미지 크기를 100% 설정 - But 수정 가능 )
                                console.log(img);
                                $(editor).summernote('pasteHTML', "<img src='" + data[x] + "' style='width:100%;' />");
                            }
                        }
                    });
                }
            });
        </script>
           <!-- 메인 네비 수정본 script 시작 -->
<!--    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
   <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>
   <script src="/TravelMaker/js/main_nav_correction.js"></script> -->
   <!-- 메인 네비 수정본 script 끝 -->
</body>
</html>