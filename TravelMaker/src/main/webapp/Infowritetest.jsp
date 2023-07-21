<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

</head>
<body>

	<form action="InfowriterCon.do" method="post" name="boardForm">
		<table>
			<tr align="center" valign="middle">
				<td><h3>게시판</h3></td>
			</tr>
		</table>
		<input type="submit">

		<table border="1" style="border-collapse: collapse;">
			<tr height="30px;">
				<th align="center" width="150px;">제목</th>
				<td><input name="boardtitle" size="50" maxlength="100"
					placeholder="제목을 입력하세요."></td>
			</tr>
			<tr height="30px;">
				<th align="center" width="150px;">글쓴이</th>
				<td><input name="username" size="50" maxlength="20"
					placeholder="이름을 입력하세요."></td>
			</tr>
			<tr height="30px;">
				<th align="center" width="150px;">내용</th>
				<td><textarea name="boardcontents" id="summernote">
				</textarea> <!-- <div id="summernote"></div> --></td>

			</tr>
		</table>
		<table style="border: 0px;">
			<tr align="right" valign="middle">


				<td><a href="">[등록]</a> <a href="">[목록]</a></td>
			</tr>
		</table>
	</form>
	<script>
		// 썸머노트

		/* 		$('#summernote').summernote({ // summernote를 사용하기 위한 선언
		 height : 350,
		
		 callbacks : { // 콜백을 사용
		 // 이미지를 업로드할 경우 이벤트를 발생
		 onImageUpload : function(files, editor, welEditable) {
		 sendFile(files[0], this);
		 }
		 }
		 });
		 */
		$(document).ready(function() {
			$('#summernote').summernote({
				placeholder : '내용을 작성하세요',
				height : 400,
				maxHeight : 400
			});
		});

		/* 		function sendFile(files, editor) {
		 // 파일 전송을 위한 폼생성
		 data = new FormData();
		 data.append("uploadFile", files);

		 $.ajax({
		 data : data,
		 type : "post",
		 url : "내가 원하는 url",
		 // 원래 있던 기능을 막기 위해
		 cache : false,
		 contentType : false,
		 processData : false,

		 success : function(data) {
		 $(editor).summernote('editor.insertImage', data.url);
		 }
		 });
		 } */
	</script>

</body>
</html>