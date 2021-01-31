let autocomplete = (function () {
    let _inp = null;
    let _arr = [];
    let _currentFocus;
    let _setAutocomplete = function (inp, arr) { // autocomplete할 배열
        _arr = arr;  //기존의 input 값과 같지 않다면, 리스너 해제
        if (_inp === inp) { return; }  //기존 리스너해제
        _removeListener();  //새로운 input 의 리스너 추가.
        _inp = inp;
        _inp.addEventListener("input", inputEvent);
        _inp.addEventListener("keydown", keydownEvent);
        }

        //Input 이벤트 구간 //
        let inputEvent = function (e) {
        var a, b, i, val = this.value;  //이전 생성된 div 제거
        closeAllLists();  //요소 확인
        if (!val) { return false; }  //현재의 포커스의 위치는 없음.
        _currentFocus = -1;  //autocomplet에서 항목을 보여줄 div 생성
        a = document.createElement("DIV"); 

        // 이 부분에서 엘리먼트를 만들고 css랑 다른 효과 입혀줌 //

        a.setAttribute("id", this.id + "autocomplete-list");  //css 적용
        a.setAttribute("class", "autocomplete-items");

        // 이 부분에서 엘리먼트를 만들고 css랑 다른 효과 입혀줌

        // input 아래의 div 붙이기//


        // 반복문 돌려서 할당해줌 //

        this.parentNode.appendChild(a);  //autocomplet할 요소 찾기
        for (i = 0; i < _arr.length; i++) { 
        //배열의 요소를 현재 input의 value의 값만큼 자른 후, 같으면 추가한다.
            if (_arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
            b = document.createElement("DIV");
            //value의 값 만큼 굵게 표시
            b.innerHTML = "<strong>" + _arr[i].substr(0, val.length) + "</strong>";
            b.innerHTML += _arr[i].substr(val.length);
            b.innerHTML += "<input type='hidden' value='" + _arr[i] + "'>";
            //console.log(b);
            // <div class="autocomplete-active"><strong>B</strong>adger<input type="hidden" value="Badger"></div> 
            //생성된 div에서 이벤트 발생시 hidden으로 생성된 input안의 value의 값을 autocomplete할 요소에 넣기
            b.addEventListener("click", function (e) {
                _inp.value = this.getElementsByTagName("input")[0].value;
                closeAllLists();
            });
            //autocomplete 리스트를 붙이기.
            a.appendChild(b);
        }
    }

    // 반복문 돌려서 할당해줌 //
}
let keydownEvent = function (e) {
    var x = document.getElementById(this.id + "autocomplete-list");
    //선택할 요소 없으면 null ,
    // <div id="autoInputautocomplete-list" class="autocomplete-items"><div class="autocomplete-active"><strong>A</strong>ardvark<input type="hidden" value="Aardvark"></div><div><strong>A</strong>lbatross<input type="hidden" value="Albatross"></div><div><strong>A</strong>lligator<input type="hidden" value="Alligator"></div><div><strong>A</strong>lpaca<input type="hidden" value="Alpaca"></div><div><strong>A</strong>nt<input type="hidden" value="Ant"></div><div><strong>A</strong>nteater<input type="hidden" value="Anteater"></div><div><strong>A</strong>ntelope<input type="hidden" value="Antelope"></div><div><strong>A</strong>pe<input type="hidden" value="Ape"></div><div><strong>A</strong>rmadillo<input type="hidden" value="Armadillo"></div></div>

    if (x) {
    //</div>태그 네임을 가지는 엘리먼트의 유요한 html 컬렉션을 반환.  div의 값을 htmlCollection의 값으로 받아옴.
        x = x.getElementsByTagName("div");
    }
    if (e.keyCode == 40) {
    //</div>down  현재위치 증가
        _currentFocus++;
    //</div></div>현재위치의 포커스 나타내기
        addActive(x);
    } else if (e.keyCode == 38) {
        //</div>up  현재위치 감소
        _currentFocus--;
        //</div></div>현재위치의 포커스 나타내기
        addActive(x);
        }
        else if (e.keyCode == 13) {
        //enter
        e.preventDefault();
        //</div></div>현재위치가 아이템 선택창내에 있는 경우
        if (_currentFocus > -1) {
            //</div>현재 위치의 값 클릭
            if (x) x[_currentFocus].click();
        }
    }
} 
    // document.addEventListener("click", function (e) {
    // closeAllLists(e.target);
    // });
    let addActive = function (x) {
        if (!x) return false;
        removeActive(x);
        if (_currentFocus >= x.length)
        _currentFocus = 0;
        if (_currentFocus < 0)
        _currentFocus = (x.length - 1);
        x[_currentFocus].classList.add("autocomplete-active");
    }
    let removeActive = function (x) {
        for (var i = 0; i < x.length; i++) {
            x[i].classList.remove("autocomplete-active");
        }
    }
    let closeAllLists = function (elmnt) {
        var x = document.getElementsByClassName("autocomplete-items");
        for (var i = 0; i < x.length; i++) {
            if (elmnt != x[i] && elmnt != _inp) {
                x[i].parentNode.removeChild(x[i]);
            }
        }
    }
    let _removeListener = function () {
        if (_inp !== null) {
            console.log(_inp)
            _inp.removeEventListener("input", inputEvent, false);
            _inp.removeEventListener("keydown", keydownEvent, false);
        }
    }
    return {
        setAutocomplete: function (inp, arr) {
        _setAutocomplete(inp, arr);
    },
}
})();