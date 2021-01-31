<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/sign/css/sign.css">
</head>
<body>
    <div class="Title"> Worknet </div>
    <div class="loginbox_out_container">
        <div class="normal_container">
          <div class="all_layout">
            <div class="n_layout">
              <h1> 로그인 </h1>
              <form method ="POST" action="/loginProcess" id="signInForm">
              <div style="color: red; font-size: 10px;">${loginFailMsg}</div> 
<%--              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
             <input type="text" name="memId" id="checkid" class="login" placeholder="아이디"/>
             <input type="password" name="memPw" value="" class="login" placeholder="비밀번호"/> 
              <a href="#"><h5 id="signanimation"> 아직 회원이 아니신가요? </h5></a>
             <button type="submit" class="login_button"> 로그인 </button>
             </form>
            </div>
            <div class="social_login_container">
             <h1> 소셜 로그인 </h1>
             <button class="social_google"> Google 로그인 </button>
             <button class="social_facebook"> Facebook 로그인</button>
             <button class="social_instagram"> instagram 로그인</button>
             <button class="social_kakao"> Kakao 로그인 </button>
           </div>
          </div>
          <div class="signup_container">
            <div class="n_layout">
              <h1> 회원가입 </h1>
              
              <form id="signUpForm" action="/signUp" method="post">
<%--                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
				<div class="text-center small mt-2" id="checkMsg" style="color: red; font-size: 10px; "></div>
	             <input type="text" name = "memId" id="memId" value="" class="login" placeholder="아이디"/>
	             <input type="button" id="duplicateCheck" value="중복체크"  class="login_button"/>
	             <input type="password" name = "memPw" id="basicPassword" value="" class="login" placeholder="비밀번호"/>
	             <input type="password" id="passwordCheckObject" name = "password_check" value="" class="login" placeholder="비밀번호 재확인"/>
	             <input type="email"   name = "email" value="" class="login" placeholder="이메일"/>
	             <a href="#"><h5 id="loginanimation"> 회원 이신가요? </h5></a>
	             <button type="submit" id="signUp" style="display: none;"class="login_button" > 제출하기 </button>
	            </div>
	            <div class="social_login_container">
	             <h1> 개인정보 </h1>
	             <input type="text" name="name" value="" class="login" placeholder="이름"/>
	             <input type="date" name="date" value="1996-06-01" class="login" />
	             <div class="login gender">
	              <input type="radio" id="male" name="gender" value="남"><label for="남" style='color:black'>남</label><br>
	              <input type="radio" id="female" name="gender" value="여"><label for="여" style='color:black'>여</label><br>
	              </div>
	             <input type="tel" id="phone" name="phone" class="login" placeholder="전화번호 (-제외)" pattern="[0-9]{3}[0-9]{4}[0-9]{4}" required />
	             <div id="checkInner" class="checkInnerClass">
              		</div>
	             </div>
	             
              </form>
              
              <div id="successFailedContainer">
                
              </div> 
           </div>
          </div>
        </div>
     </div>
     
     <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="crossorigin="anonymous"></script>
    <script src="/sign/js/signAnimation.js"></script>
	<script src="/sign/js/duplicateCheck.js"></script>
<!--     <script src="/sign/js/signValAjax.js"></script> -->
</body>
</html>