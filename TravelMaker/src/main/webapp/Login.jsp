<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
  <link rel="stylesheet" href="assetsBoard/css/Login.css">
</head>
<body>
  <!-- partial:index.partial.html -->

  <!-- 로그인 화면 시작 -->
  <p class="tip"></p>
  <div class="cont">
    <form action="">
      <div class="form sign-in">
        <h2> 로그인 </h2>

        <label>
          <span>Email</span>
          <input type="email" />
        </label>
        <label>
          <span>Password</span>
          <input type="password" />
        </label>
        <p class="forgot-pass">Forgot password?</p>
        <button type="button" class="submit">Sign In</button>
        <button type="button" class="fb-btn">Connect with <span>facebook</span></button>
      </div>
    </form>
    <form action="">
      <div class="sub-cont">
        <div class="img">
          <div class="img__text m--up">
            <h2> 처음이세요? </h2>
            <p>Sign up and discover great amount of new opportunities!</p>
          </div>
          <div class="img__text m--in">
            <h2> 회원이세요? </h2>
            <p>If you already has an account, just sign in. We've missed you!</p>
          </div>
          <div class="img__btn">
            <span class="m--up">Sign Up</span>
            <span class="m--in">Sign In</span>
          </div>

        </div>
    </form>
    <!-- 로그인 화면 끝 -->

    <!-- 회원가입 화면 시작 -->
    <form action="">
    <div class="form sign-up">
      <h2> 회원가입 </h2>

      <label>
        <span>Name</span>
        <input type="text" />
      </label>
      <label>
        <span>Email</span>
        <input type="email" />
      </label>
      <label>
        <span>Password</span>
        <input type="password" />
      </label>
      <button type="button" class="submit">Sign Up</button>
      <button type="button" class="fb-btn">Join with <span>facebook</span></button>

    </div>
    </form>
    <!-- 회원가입 화면 끝 -->
  </div>
  </div>

  <a href="https://dribbble.com/shots/3306190-Login-Registration-form" target="_blank" class="icon-link">
    <img src="http://icons.iconarchive.com/icons/uiconstock/socialmedia/256/Dribbble-icon.png">
  </a>
  <a href="https://twitter.com/NikolayTalanov" target="_blank" class="icon-link icon-link--twitter">
    <img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png">
  </a>
  <!-- partial -->
  <script src="./assetsBoard/js/Login.js"></script>

</body>
</html>