window.addEventListener('DOMContentLoaded', function(){

    console.log("loading success");
    
    
    // 클릭 이벤트 2개 정의 //
    
    var signclick = document.getElementById('signanimation');
    var loginform = document.getElementsByClassName('all_layout');             
    
    var loginclick = document.getElementById('loginanimation');
    var signupform = document.getElementsByClassName('signup_container');
    
    signclick.onclick = function () {
      
      loginform[0].classList.remove('activelogin');
      signupform[0].classList.remove('inactivesignup');
      
      signupform[0].classList.add('activesignup');
      loginform[0].classList.add('inactivelogin');
    }
    
    loginclick.onclick = function () {
      
      signupform[0].classList.remove('activesignup');
      loginform[0].classList.remove('inactivelogin');
      
      loginform[0].classList.add('activelogin');
      signupform[0].classList.add('inactivesignup');
    }
    // 클래스 삽입 2개 정의 //
    
    
    
    // 밸리데이션 로직 //
    
    var checkid = document.getElementById('checkid');
    validateEmail(checkid);
    
    function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
  }
    
  });