<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="assetsBoard/css/Login.css">
</head>
<body>
	<!-- partial:index.partial.html -->

	<!-- 로그인 화면 시작 -->
	<div class="cont">
		<form action="">
			<div class="form sign-in">
				<h2>로그인</h2>

				<label> <span>Email</span> <input type="email" name="email">
				</label> <label> <span>Password</span> <input type="password"
					name="pw">
				</label>
				<p class="forgot-pass">Forgot password?</p>
				<button type="button" class="submit">Sign In</button>
			</div>
		</form>
		<form action="">
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
		</form>
		<!-- 로그인 화면 끝 -->

		<!-- 회원가입 화면 시작 -->
		<form action="">
			<div class="Join_form sign-up">
				<h2>회원가입</h2>

				<label> <span>Name</span> <input type="text" name="name">
				</label> <label> <span>Email</span> <input type="email" name="email">
				</label> <label> <span>Password</span> <input type="password"
					name="pw">
				</label>
				<div class="join_check">
					<div class="join_box1">
						<input type="radio" id="nomal_user" name="user" value="normal"
							checked /> <label for="nomal_user">일반 회원</label>
					</div>
					<div class="join_box2">
						<input type="radio" id="gosu_user" name="user" value="gosu" /> <label
							for="gosu_user">여행 고수</label>
					</div>
				</div>
				<button type="button" class="submit">Sign Up</button>

			</div>
		</form>
		<!-- 회원가입 화면 끝 -->
	</div>
	</div>

	<!-- partial -->
	<script src="./assetsBoard/js/Login.js"></script>

</body>
</html>