window.addEventListener('DOMContentLoaded', () => { 
//	formPre();
	passwordCheck();
	signup();
});


// 회원가입 폼 이벤트 막는 함수 //
//function formPre() {
//    let form = document.getElementById('signUpForm');
//    form.addEventListener('submit',(eve) => {
//        eve.preventDefault();
//    })
//}

// 패스워드 체크 해주는 함수 //
function passwordCheck() {
    let passwordCheckElement = document.getElementById('passwordCheckObject');
    passwordCheckElement.addEventListener('blur', (eve) => {

        let formData = new FormData(document.getElementById('signUpForm'));
        let passwordValue = formData.get('memPw');
        let passwordCheckValue = formData.get('password_check');
        let passwordMessage = document.getElementById('checkInner');
        console.log(`${passwordValue} ${passwordCheckValue} `);
        
        // 패스워드 애니메이션 삽입 // 
        let passwordAnimation = document.getElementsByClassName('checkInnerClass');
        
        
        if(passwordValue ==  passwordCheckValue) {
            passwordMessage.innerHTML="패스워드 일치 ";
        	passwordAnimation[0].classList.add('animate__animated','animate__bounce');
            
        }
        else {
            passwordMessage.innerHTML="패스워드 불일치 다시 작성";
        	passwordAnimation[0].classList.add('animate__animated','animate__bounce');
        }
    })

    let basicPassword = document.getElementById('basicPassword');
    basicPassword.addEventListener('blur', (eve) => {

        let formData = new FormData(document.getElementById('signUpForm'));
        let passwordValue = formData.get('memPw');
        let passwordCheckValue = formData.get('password_check');
        let passwordMessage = document.getElementById('checkInner');
        console.log(`${passwordValue} ${passwordCheckValue} `);
        
        
        // 패스워드 애니메이션 찾기 위해서 삽입함 //
        let passwordAnimation = document.getElementsByClassName('checkInnerClass');
        
        
        if(passwordValue ==  passwordCheckValue) {
            passwordMessage.innerHTML="패스워드 일치 ";
        	passwordAnimation[0].classList.add('animate__animated','animate__bounce');
//        	signup();
//        	signup(formData);

        }
        else {
            passwordMessage.innerHTML="패스워드 불일치 다시 작성";
            passwordAnimation[0].classList.add('animate__animated','animate__bounce');
        }
    })
    
 
    
//    signup(formData);


}

// ajax로 회원가입 값 넘겨주는 함수 //\  
function signup(formData) {
    
    let forObject = formData;
//    console.log(forObject);
//    console.log(JSON.stringify(forObject));


    let signUp = document.getElementById('signUp');
    let token = $("meta[name='_csrf']").attr("content");
    let header = $("meta[name='_csrf_header']").attr("content");
    
    let formpre = new FormData(document.getElementById('signUpForm'));
    signUp.addEventListener('click',(e) => {
    	//전체 널 인지만 비교하고, 널 값 있으면 그 부분 focus //
 
    	if ($('#basicPassword').val() == ''){
    		$('#basicPassword').focus();
    		e.preventDefault();
    	}
    	else if ($('#passwordCheckObject').val() == '') {
    		$('#passwordCheckObject').focus();
    		 e.preventDefault();
    	}
    	else if ($('#name').val() == '') {
    		$('#name').focus();
    		 e.preventDefault();
    	}
    	else if ($('#date').val() == '') {
    		$('#date').focus();
    		 e.preventDefault();    	
    	}
    	else if ($("input:radio[id='male']").is(":checked") == false  &&
    			$("input:radio[id='female']").is(":checked") == false ) {
    		 e.preventDefault();    	
    	}
    	else if ($('#autoInput').val() == '') {
    		$('#autoInput').focus();
    		 e.preventDefault();
    	}else {
    		e.returnValue = true;
    	}

//        $.ajax({
//            type: 'POST',
//            url: '/signUp',
//            data: JSON.stringify(forObject),
//            beforeSend : function(xhr) {  
//            	/*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
//				xhr.setRequestHeader(header, token);
//            },
//            success: function(data) {
////                alert(data);
//                window.location.href="/login";
////                location.href=data;
//            },
//            processData: false,
//            dataType: 'application/json',
//        });
    });
}




// 브라우저 정책 위반 때문에 직접적으로 console.log 출력이 안된다.
// 출력 하려면 반복문으로 키와 밸류를 돌려주어야 한다.
// Formdata로 ajax 통신을 할 경우에 processData : false 설정을 따로 해주어야 한다.

// for (var key of formData.keys()) {
//
//     console.log(key);
//  
//   }
//  
//   for (var value of formData.values()) {
//  
//     console.log(value);
//  
//   }