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

	<form action="PortCon.do">
		<div class="editor-contents">
			<div id="tip-title-box">
				<input id="tip-title" name="port_title" placeholder="제목을 입력해 주세요">
			</div>
			<!-- Editor -->
			<div id="editor-box">
				<textarea id="summernote" name="port_content"></textarea>
			</div>
			<!-- Submit -->
			<div id="btn-box">
				<div id="btn-box-center">
					<a href="portfolio_list.jsp" id="cancel-btn">취소</a>
					<button id="submit-btn" type="submit">등록</button>
				</div>
			</div>
		</div>
	</form>


	<script>
		// 메인화면 페이지 로드 함수
		$(document).ready(function() {
			$('#summernote').summernote({
				placeholder : '내용을 작성하세요',
				height : 400,
				maxHeight : 400
			});
		});

	</script>
      
      
	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->
</body>
</html>