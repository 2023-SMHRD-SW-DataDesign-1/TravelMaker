<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <!-- include libraries(jQuery, bootstrap) -->
   <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
   <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <!-- include summernote css/js -->
   <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
   <style>
      /* @import "//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css"; */
      .editor-contents {
         padding-bottom: 50px;
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
         width: 600px;
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
         width: 600px;
         height: 100%;
      }

      #btn-box {
         width: 100%;
         display: flex;
         justify-content: center;
      }

      #btn-box-center {
         width: 600px;
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

      .div_title {
            text-align: center;
			margin-top: 94px;
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
		<h1 style="padding: 30px 0;">포트폴리오 작성</h1>
	</div>

	<form action="">
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
					<div id="submit-btn">등록</div>
				</div>
			</div>
		</div>
	</form>


	<script>
		$(document)
				.ready(
						function() {
							$('#summernote')
									.summernote(
											{
												/* 폰트선택 툴바 사용하려면 주석해제 */
												// fontNames: ['Roboto Light', 'Roboto Regular', 'Roboto Bold', 'Apple SD Gothic Neo'],
												// fontNamesIgnoreCheck: ['Apple SD Gothic Neo'],
												placeholder : 'TIP 게시글을 입력해 주세요',
												tabsize : 2,
												height : 570,
												resize : false,
												lang : "ko-KR",
												disableResizeEditor : true,
												toolbar : [
														/* 폰트선택 툴바 사용하려면 주석해제 */
														// ['fontname', ['fontname']],
														[ 'fontsize',
																[ 'fontsize' ] ],
														[
																'style',
																[
																		'bold',
																		'italic',
																		'underline',
																		'clear' ] ],
														[ 'color', [ 'color' ] ],
														[ 'table', [ 'table' ] ],
														[ 'para',
																[ 'paragraph' ] ],
														[
																'insert',
																[ 'link',
																		'picture' ] ],
														[ 'view', [] ] ],
												callbacks : { //여기 부분이 이미지를 첨부하는 부분
													onImageUpload : function(
															files) {
														RealTimeImageUpdate(
																files, this);
													}
												}
											});
							/* 초기 셋팅 ( etc -> 게시글 수정 or Default font family ) */
							$('#summernote').summernote('code',
									"<?php echo $positing_text ?>");
							$('.note-current-fontname').css('font-family',
									'Apple SD Gothic Neo').text(
									'Apple SD Gothic Neo');
							$('.note-editable').css('font-family',
									'Apple SD Gothic Neo');
							$(".note-group-image-url").remove(); //이미지 추가할 때 Image URL 등록 input 삭제 ( 나는 필요없음 )
							$("#submit-btn").click(function() {
								var text = $('#summernote').summernote('code');
							});
							/*
							 - 이미지 추가 func
							 - ajax && formData realtime img multi upload
							 */
							function RealTimeImageUpdate(files, editor) {
								var formData = new FormData();
								var fileArr = Array.prototype.slice.call(files);
								fileArr
										.forEach(function(f) {
											if (f.type.match("image/jpg")
													|| f.type
															.match("image/jpeg"
																	|| f.type
																			.match("image/jpeg"))) {
												alert("JPG, JPEG, PNG 확장자만 업로드 가능합니다.");
												return;
											}
										});
								for (var xx = 0; xx < files.length; xx++) {
									formData.append("file[]", files[xx]);
								}
								$
										.ajax({
											url : "./이미지 받을 백엔드 파일",
											data : formData,
											cache : false,
											contentType : false,
											processData : false,
											enctype : 'multipart/form-data',
											type : 'POST',
											success : function(result) {
												//항상 업로드된 파일의 url이 있어야 한다.
												if (result === -1) {
													alert('이미지 파일이 아닙니다.');
													return;
												}
												var data = JSON.parse(result);
												for (x = 0; x < data.length; x++) {
													var img = $("<img>").attr({
														src : data[x],
														width : "100%"
													}); // Default 100% ( 서비스가 앱이어서 이미지 크기를 100% 설정 - But 수정 가능 )
													console.log(img);
													$(editor)
															.summernote(
																	'pasteHTML',
																	"<img src='"
																			+ data[x]
																			+ "' style='width:100%;' />");
												}
											}
										});
							}
						});
	</script>
      
      
	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
</body>
</html>