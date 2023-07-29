<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
    integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/Login.css">
<style>
.signUpButton {
    background-color: #cccccc; /* 회색 배경 색상 설정 */
    /* 필요한 다른 스타일 속성들을 추가로 설정할 수 있습니다. */
}
</style>


</head>
<body>
	<!-- partial:index.partial.html -->

	<!-- 로그인 화면 시작 -->
	<div class="cont">
		<form action="LoginCon.do" method="post">
			<div class="form sign-in">
				<h2>로그인</h2>

				<label for="id"> <span>ID</span> <input type="text"
					name="id"></label> <label> <span>Password</span> <input
					type="password" name="pw"></label>
				<p class="forgot-pass">Forgot password?</p>
				<!-- <button type="button" class="submit">Sign In</button> -->
				<input class="submit" type="submit" value="Sign In">

			</div>
		</form>
		<div class="sub-cont">
			<div class="img">
				<div class="img__text m--up">
					<h2>처음이세요?</h2>
					<p>Sign up and discover great amount of new opportunities!</p>
				</div>
				<div class="img__text m--in">
					<h2>회원이세요?</h2>
					<p>If you already has an account, just sign in. We've missed
						you!</p>
				</div>
				<div class="img__btn">
					<span class="m--up">Sign Up</span> <span class="m--in">Sign
						In</span>
				</div>

			</div>
			<!-- 로그인 화면 끝 -->

			<!-- 회원가입 화면 시작 -->
			<form action="JoinCon.do" method="post" onsubmit="return validateForm();">
				<div class="Join_form sign-up">
					<h2>회원가입</h2>

					<div class="Join_form_box">
						<label for="id"> <span>ID</span> 
						<input type="text" name="id" id="idInput"></label> 
						<div id="duplicateMessage" style="color: red;"></div> <!-- 메시지를 출력할 요소 추가 -->
						
						<!-- 아이디 중복검사 -->
						
						<script>
						    $(document).ready(function() {
						       
						        $("#idInput").on("focusout", function() {
						            const enteredId = $(this).val();
					
						            $.ajax({
						                type: "POST",
						                url: "DuplicateCon",
						                data: { id: enteredId },
						                dataType: "json",
						                success: function(response) {
						                    const duplicateMessage = $("#duplicateMessage");
						                    const signUpBtn = $("#signUpBtn"); // 회원가입 버튼 선택
						                    if (response.status === "duplicate") {
						                        duplicateMessage.text("중복된 아이디입니다.");
						                        signUpBtn.prop("disabled", true);
						                        signUpBtn.addClass("signUpButton"); // 회원가입 버튼 클래스 추가 (비활성화 스타일 적용)
						                    } else {
						                        duplicateMessage.text("");
						                        signUpBtn.prop("disabled", false);
						                        signUpBtn.removeClass("signUpButton"); // 회원가입 버튼 클래스 제거 (활성화 상태에서 기본 스타일 적용)
						                    }
						                },
						                error: function(xhr, status, error) {
						                    console.error("AJAX 요청 중 오류가 발생했습니다:", error);
						                }
						            });
						        });
						    });
						</script>
						
						<label> <span>Password</span> 
						<input type="password" name="pw" id="pwInput"></label> 
						<label> <span>Name</span>
						<input type="text" name="name" id="nameInput"></label> 
						<label> <span>Email</span>
						<input type="email" name="email" id="emailInput"></label>
					</div>


					<div class="User_type">
						<input type="radio" id="nomal_user" name="type" value="회원" checked />
						<label id="label_box1" for="nomal_user">일반 회원</label> <input
							type="radio" id="gosu_user" name="type" value="고수" /> <label
							id="label_box2" for="gosu_user">여행 고수</label>
					</div>
					<!--<div class="container">
						<h2>Video Category</h2>

						<div class="select-box">
							<div class="options-container">

								<div class="option">
									<input type="radio" class="radio" id="korean" name="act-area" value="국내" />
									<label for="korean">국내</label>
								</div>
								<div class="option">
									<input type="radio" class="radio" id="Southeast_Asia" name="act-area" value="동남아"/> 
									<label for="Southeast_Asia">동남아</label>
								</div>

								<div class="option">
									<input type="radio" class="radio" id="europe" name="act-area" value="유럽"/>
									<label for="europe">유럽</label>
								</div>

								<div class="option">
									<input type="radio" class="radio" id="North_America" name="act-area" value="북미"/>
									<label for="North_America">북미</label>
								</div>
								<div class="option">
									<input type="radio" class="radio" id="South_America" name="act-area" value="아프리카"/>
									<label for="Africa">아프리카</label>
								</div>
								<div class="option">
									<input type="radio" class="radio" id="europe" name="act-area" value="유럽"/>
									<label for="europe">유럽</label>
								</div>
							</div>

							<div class="selected">Select Video Category</div>
						</div>
					</div> -->
					<div class="multi_select_box">
						<label>Select Country</label> 
						<select id="countries" class="multi_select" name="act_area" placeholder="Native Select" data-silent-initial-value-set="false">
							<option value="국내">국내</option>
							<option value="동남아">동남아</option>
							<option value="유럽">유럽</option>
							<option value="북미">북미</option>
							<option value="남미">남미</option>
							<option value="아프리카">아프리카</option>
							<option value="인도">인도</option>
							<option value="중국">중국</option>
							<option value="일본">일본</option>
						</select>
					</div>
					<!-- 
					<div class="join_check">
						<div class="join_box1">
							<input type="radio" id="nomal_user" name="type" value="회원" checked />
							<label for="nomal_user">일반 회원</label>
						</div>
						<div class="join_box2">
							<input type="radio" id="gosu_user" name="type" value="고수" /> 
							<label for="gosu_user">여행 고수</label>
						</div>
					</div>
					 -->

					<!-- <button type="button" class="submit">Sign Up</button> -->
					<input class="submit signUpButton" type="submit" value="Sign Up" id="signUpBtn" disabled>
					
					<script>
						function validateForm() {
						    const idInput = $("#idInput").val();
						    const pwInput = $("#pwInput").val();
						    const nameInput = $("#nameInput").val();
						    const emailInput = $("#emailInput").val();
						
						    if (!idInput || !pwInput || !nameInput || !emailInput) {
						        alert("모든 값을 입력해주세요.");
						        return false; // 회원가입 처리가 진행되지 않도록 false 반환
						    }

						    return true; // 회원가입 처리를 진행할 수 있도록 true 반환
						}
					</script>					
					

				</div>
			</form>
			<!-- 회원가입 화면 끝 -->
		</div>
	</div>

	<!-- partial -->
	<script src="js/Login.js"></script>
</body>
</html>