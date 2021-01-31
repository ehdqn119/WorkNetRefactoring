<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" href="/sign/css/autoComplete.css">
    <link rel="stylesheet" href="/sign/css/sign.css">
    
</head>
<body onload="init()">
    <div class="Title"> Worknet </div>
    <div class="loginbox_out_container">
        <div class="normal_container">
          <div class="all_layout">
          	<div class="img_container">
             <img class="mainImg" src= "/sign/img/login.jpg">
             <!-- <h1> 소셜 로그인 </h1>
             <button class="social_google"> Google 로그인 </button>
             <button class="social_facebook"> Facebook 로그인</button>
             <button class="social_instagram"> instagram 로그인</button>
             <button class="social_kakao"> Kakao 로그인 </button> -->
           </div>
           
            <div class="mainLogin">
              <div id="reLoginContent"><h1 id="MainTitle" class="MainLoginTitle animate__animated animate__bounce"> 로그인 </h1></div>
              <form method ="POST" action="/loginProcess" id="signInForm" class="mainLoginForm">
              <div style="color: red; font-size: 10px;">${loginFailMsg}</div> 
<%--              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
             <input type="text" name="memId" id="checkid" class="login" placeholder="아이디"/>
             <input type="password" name="memPw" value="" class="login" placeholder="비밀번호"/> 
              <a><h5 id="signanimation"> 아직 회원이 아니신가요? </h5></a>
              <a><h5 id="findToogle"> 비밀번호를 잊으셨나요? </h5></a>
              <input type="text" name="findmemId" id="findmemId" class="Find login" placeholder="찾으실 아이디를 입력하세요."/>
              <input type="email" id="findemail"  name="findemail" value="" class="Find login" placeholder="등록된 이메일 입력"/>
             <button type="submit" class="login_button"> 로그인 </button>
             <button type="button" class="login_button find_button"> 비밀번호 찾기 </button>
             </form>
            </div>
            
          </div>
          <div class="signup_container">
            <div class="n_layout">
              <h1> 회원가입 </h1>
              
              <form id="signUpForm" action="/signUp" method="post" >
<%--                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
				<div class="text-center small mt-2" id="IdcheckMsg" style="color: red; font-size: 10px; "></div>
	             <input type="text" name = "memId" id="memId" value="" class="login" placeholder="아이디"/>
	             <input type="password" name = "memPw" id="basicPassword" value="" class="login" placeholder="비밀번호"/>
	             <input type="password" id="passwordCheckObject" name = "password_check" value="" class="login" placeholder="비밀번호 재확인"/>
	             <div class="text-center small mt-2" id="EmailcheckMsg" style="color: red; font-size: 10px; "></div>
	             <input type="email" id="email"  name="email" value="" class="login" placeholder="이메일"/>
	             <a href="#"><h5 id="loginanimation"> 회원 이신가요? </h5></a>

	            </div>
	            <div class="social_login_container">
	             <h1> 개인정보 </h1>
	             <input type="text" id="name" name="name" value="" class="login" placeholder="이름"/>
	             <input type="date" id="date" name="date" value="1996-06-01" class="login" />
	             <div class="login gender">
	              <input type="radio" id="male" name="gender" value="남"><label for="남" style='color:black'>남</label><br>
	              <input type="radio" id="female" name="gender" value="여"><label for="여" style='color:black'>여</label><br>
	              </div>
	              <!-- 관련학과 Model로 구현해서 받아올 것 -->
	             <div class="srch_form autocomplete login">
        			<input id="autoInput" placeholder="Search...">
    			 </div>
	             <!-- <input type="tel" id="phone" name="phone" class="login" placeholder="전화번호 (-제외)" pattern="[0-9]{3}[0-9]{4}[0-9]{4}" required />
	             --> 
	             <button type="button" id="duplicateCheck" class="login_button" > 중복체크 </button>
	             <button type="submit" id="signUp" style="display: none;"class="login_button" > 제출하기 </button>
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
    <script src="/sign/js/signValAjax.js"></script>
    <script src="/sign/js/findUser.js"></script>
    <script src="/sign/js/autoComplete.js"></script>
    <script src="/sign/js/college.js"></script>
    
   <script>
        // autocomplete 부분을 생성
        window.onload = function () {
            autocomplete.setAutocomplete(document.getElementById("autoInput"), animal)
        }
    </script>
    
</body>
</html>