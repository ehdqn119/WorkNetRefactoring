const c_CategorySearch = document.getElementsByClassName('c_CategorySearch');
const clickField = document.getElementsByClassName('field');
const areaContainer = document.getElementsByClassName('areaContainer');
const fieldContainer = document.getElementsByClassName('fieldContainer');


// 사이드바 제어 구문 //
const hamburger = document.getElementById('hamburger');
const logo = document.getElementsByClassName('logoText');
const side = document.getElementById('side');
const header = document.getElementsByClassName('header');
// const hr = document.getElementsByClassName('hrBar');




window.addEventListener('DOMContentLoaded', () => { 
    c_CategorySearch[0].addEventListener("click", () => {
        //셀렉이 되어있는지 확인할 것//
            if(areaContainer[0].classList.contains('select')) {
                areaContainer[0].classList.remove('select');
            }
            else
                areaContainer[0].classList.add('select');
    });
    
    // 필드 컨테이너는 주석처리 입니다.  //
    // clickField[0].addEventListener("click", () => {
    
    //    //셀렉이 되어있는지 확인할 것//
    //         if(fieldContainer[0].classList.contains('select')) {
    //             fieldContainer[0].classList.remove('select');
    //         }
    //         else
    //             fieldContainer[0].classList.add('select');
            
    // });
    
    //#hamburger 
    hamburger.addEventListener("click", () => {
            if(hamburger.classList.contains('marginLeft')) {
                logo[0].classList.remove('none');
                hamburger.classList.remove('marginLeft');
                side.classList.remove('width');
                side.classList.remove('paddingLeft');

                header[0].style.width = "100%-248px"
            }
            else {
                logo[0].classList.add('none');
                hamburger.classList.add('marginLeft');
                side.classList.add('width');
                side.style.padding = "30px 30px 0px 20px";

                //hr[0].style.display = "none";
                //hr[1].style.display = "none";
                header[0].style.width = "100%";
            }
    });

    
});
