const clickArea = document.getElementsByClassName('area');
const clickField = document.getElementsByClassName('field');
const areaContainer = document.getElementsByClassName('areaContainer');
const fieldContainer = document.getElementsByClassName('fieldContainer');


// 사이드바 제어 구문 //
const hamburger = document.getElementById('hamburger');
const logo = document.getElementsByClassName('logoText');
const side = document.getElementById('side');
const header = document.getElementsByClassName('header');
const hr = document.getElementsByClassName('hrBar');




window.addEventListener('DOMContentLoaded', () => { 

    //#hamburger 
    hamburger.addEventListener("click", () => {
            if(hamburger.classList.contains('marginLeft')) {
                logo[0].classList.remove('none');
                hamburger.classList.remove('marginLeft');
                side.classList.remove('width');
                side.classList.remove('paddingLeft');

                header[0].style.width= "calc(100% - 283px)";
            }
            else {
                logo[0].classList.add('none');
                hamburger.classList.add('marginLeft');
                side.classList.add('width');
                side.style.padding = "30px 30px 0px 20px";

                // hr[0].style.display = "none";
                // hr[1].style.display = "none";
                header[0].style.width="100%";
            }
    });

    
});
