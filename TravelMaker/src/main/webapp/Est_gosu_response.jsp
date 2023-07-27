
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
	
	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->
	
	
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
        <script>
            $(document).ready(function () {
                $('#summernote').summernote({
                    /* 폰트선택 툴바 사용하려면 주석해제 */
                    // fontNames: ['Roboto Light', 'Roboto Regular', 'Roboto Bold', 'Apple SD Gothic Neo'],
                    // fontNamesIgnoreCheck: ['Apple SD Gothic Neo'],
                    placeholder: 'TIP 게시글을 입력해 주세요',
                    tabsize: 2,
                    height: 570,
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
</body>
</html>