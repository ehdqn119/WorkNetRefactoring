var btn = document.getElementsByClassName("star");			// 아이디가 "btn"인 요소를 선택함.
		btn[0].addEventListener("click", clickBtn);			// 선택한 요소에 click 이벤트 리스너를 등록함.
		btn[0].addEventListener("mouseover", mouseoverBtn);	// 선택한 요소에 mouseover 이벤트 리스너를 등록함.
		btn[0].addEventListener("mouseout", mouseoutBtn);		// 선택한 요소에 mouseout 이벤트 리스너를 등록함.

        btn[1].addEventListener("click", clickBtn);			// 선택한 요소에 click 이벤트 리스너를 등록함.
		btn[1].addEventListener("mouseover", mouseoverBtn);	// 선택한 요소에 mouseover 이벤트 리스너를 등록함.
        btn[1].addEventListener("mouseout", mouseoutBtn);
        
        btn[2].addEventListener("click", clickBtn);			// 선택한 요소에 click 이벤트 리스너를 등록함.
		btn[2].addEventListener("mouseover", mouseoverBtn);	// 선택한 요소에 mouseover 이벤트 리스너를 등록함.
        btn[2].addEventListener("mouseout", mouseoutBtn);
        
        btn[3].addEventListener("click", clickBtn);			// 선택한 요소에 click 이벤트 리스너를 등록함.
		btn[3].addEventListener("mouseover", mouseoverBtn);	// 선택한 요소에 mouseover 이벤트 리스너를 등록함.
        btn[3].addEventListener("mouseout", mouseoutBtn);
        
        btn[4].addEventListener("click", clickBtn);			// 선택한 요소에 click 이벤트 리스너를 등록함.
		btn[4].addEventListener("mouseover", mouseoverBtn);	// 선택한 요소에 mouseover 이벤트 리스너를 등록함.
		btn[4].addEventListener("mouseout", mouseoutBtn);



		function clickBtn() {
            // 1. 별 갯수만큼 색깔 바꿔주는 클래스를 삽입해야한다. //
            // Tip : 해당 오버효과의 data를 다른 변수에 저장시켜준다.
            // Tip2 : 반복문의 정해진 수 < Tip1 의 변수만큼 돌려준다. //
            // Tip3 : 
            var starselector = document.getElementsByClassName('star');
            var clickvalue = this.dataset.value;

            for(var i = 0; i <=4; i++) {

                var hover = starselector[i].children;

                if(i < clickvalue)
                {
                    hover[0].classList.add('click');
                }
                else {
                    var hover = starselector[i].children;
                    hover[0].classList.remove('click');
                }
                
            }

            var insertspan = document.getElementById('evaluation');

            if(clickvalue <= 2) {
    
                insertspan.textContent = "" + clickvalue + "점 죄송합니다." 
            }

            else {
                insertspan.textContent = "" + clickvalue + "점 좋은 평가 감사합니다."
            }


            // 2. 별 개수를 보고, 메세지를 출력해주는 함수를 만들어야 함.
            // alert(this.dataset.value);
		}
		function mouseoverBtn() {
            
            // 1. 클래스 삽입해야한다 //
            var starselector = document.getElementsByClassName('star');
            var clickvalue = this.dataset.value;
            var hover = starselector[0].children;

            for(var i=0; i <=4; i++) {

                if(i < clickvalue) {
                    var hover = starselector[i].children;
                    hover[0].classList.add('hover');
                }

                else {
                    var hover = starselector[i].children;
                    hover[0].classList.remove('hover');
                }
                
            }
			//alert(this.dataset.value);
		}
		function mouseoutBtn() {
            // 1. mouseoverBtn 에 적용된 클래스를 제거해야한다. //
            //alert(this.dataset.value);
            
            var starselector = document.getElementsByClassName('star');

            for(var i=0; i <=4; i++) {
                var hover = starselector[i].children;
                hover[0].classList.remove('hover');
            }
        }
		