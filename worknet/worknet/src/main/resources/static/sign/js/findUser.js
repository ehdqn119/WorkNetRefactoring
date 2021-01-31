function findToogle() {
	let findEvent = document.getElementById('findToogle');
	findEvent.addEventListener('click',() => {
		
		// login 클래스 전체 다 none 처리 //
		let noneLogin = document.getElementsByClassName('login');
		noneLogin[0].style.display = 'none';
		noneLogin[1].style.display = 'none';
		let login_button = document.getElementsByClassName('login_button');
		login_button[0].style.display = 'none';
		findEvent.style.display = 'none';
		let relogincontext = document.getElementById('reLoginContent');
		relogincontext.innerHTML = relogincontext.innerHTML = "<h1 id=temp> 다시 로그인 </h1>";
			
		//
		
		let findId =document.getElementsByClassName('Find');
		findId = findId[0];
		let findEmail = document.getElementsByClassName('Find');
		findEmail = findEmail[1];
		findId.classList.toggle('select');
		findEmail.classList.toggle('select');
		let find_button = document.getElementsByClassName('find_button');
		find_button[0].style.display = 'block';
		
		
		
		// JSON 전송 부분 
		find_button[0].addEventListener('click', () => {
			
			const mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
			if(findEmail.value.match(mailformat)) {
				console.log("인증된 이메일 값 입니다.");
				findEmail.focus();
				let data =JSON.stringify({"memId":findId.value,"email":findEmail.value});
				console.log(data);
		        $.ajax({
		            type: "POST",
		            url: "/findByPass",
		            contentType : "application/json; charset=utf-8",
		            dataType : "Json",
		            data: data,
		            success: function (data) {	
		            	alert("새로운 비밀 번호 입니다! : " + data);
		            	window.location.href="/login";
		            },
		            error : function() {
						alert("이메일과 아이디를 다시한번 확인해주세요")
					}
		        })
				// Ajax 연동 부분 //
				return true;
			} 
			else{
				
				let findEmail = document.getElementsByClassName('Find');
				findEmail[1].value = "잘못된 이메일 형식입니다!";
			};
			
			
			});
		let relogincontextTemp = document.getElementById('temp');
		relogincontextTemp.addEventListener('click',() => {
		// 이 부분에서 다시 블락 언블락 처리 해주어야 합니다.
		relogincontext.innerHTML = relogincontext.innerHTML = "<h1 id=MainTitle> 로그인  </h1>";
		let noneLogin = document.getElementsByClassName('login');
		noneLogin[0].style.display = 'block';
		noneLogin[1].style.display = 'block';
		let login_button = document.getElementsByClassName('login_button');
		login_button[0].style.display = 'block';
		findEvent.style.display = 'block';
			
		// 여기서 오류 납니다. // 
		let findId =document.getElementsByClassName('Find');
		findId = findId[0];
		let findEmail = document.getElementsByClassName('Find');
		findEmail = findEmail[1];
		findId.classList.toggle('select');
		findEmail.classList.toggle('select');
		let find_button = document.getElementsByClassName('find_button');
		find_button[0].style.display = 'none';
		});
		
		
	});
		
	
};

window.addEventListener('DOMContentLoaded', () => { 
	findToogle();
	
	
});






