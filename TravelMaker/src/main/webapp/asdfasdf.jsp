<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<style>
body {
	padding: 1rem;
}

h1 {
	text-align: center;
}

button {
	float: right;
}

#userInfoContainer {
	display: flex;
	justify-content: flex-end;
	gap: 1rem;
}

#inputTitle {
	width: 100%;
	font-size: xx-large;
}
</style>
</head>
<body>

	<h1>게시글 작성</h1>
	<div id="userInfoContainer">
		<div>
			<label for="inputNickname"> 닉네임 : </label> <input id="inputNickname" />
		</div>
		<div>
			<label for="inputPassword"> 비밀번호 : </label> <input id="inputPassword"
				type='password' />
		</div>
	</div>
	<input id="inputTitle" placeholder="제목을 작성해주세요" />
	<div id="summernote"></div>
	<button onclick="summit()">완료</button>


	<script>
    // 메인화면 페이지 로드 함수
    $(document).ready(function() {
        $('#summernote').summernote({
            placeholder: '내용을 작성하세요',
            height: 400,
            maxHeight: 400
        });
    });

    // summit 함수 만들기
    function summit() {

        const button = event.srcElement;
        button.disabled = true;

        // nickname, password, content를 가지고와서 formdata 로 전송
        const nickname = document.getElementById('inputNickname').value;
        const password = document.getElementById('inputPassword').value;
        const title = document.getElementById('inputTitle').value;
        const content = $('#summernote').summernote('code');
        console.log(nickname);
        console.log(password);
        console.log(title);

        const formData = new FormData;
        formData.append("nickname", nickname);
        formData.append("password", password);
        formData.append("title", title);
        formData.append("content", content);
        console.log(content);

        const httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = () => {
            if (httpRequest.readyState === XMLHttpRequest.DONE) {
                if (httpRequest.status === 200) {
                    console.log(httpRequest.response);
                    location.href = "/index.php";
                } else {
                    alert("게시물 등록중 오류가 발생했습니다.");
                    button.disabled = false;
                }
            }
        }
        httpRequest.open('post', '/summitPost.php', true);
        httpRequest.send(formData);

    }
    </script>

</body>
</html>