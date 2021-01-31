// 유사배열과, 배열에 대한 개념을 생각하자 . //
// foreach문에서 이벤트 리스너가 적용 될 수 있는 이유는 여기서는 Element가 html 이기 떄문이다. //
// dataset은 지원을 안하는지 하는데 애매한지 잘 모르겠다. 그냥 무시하고 써도 된다. //
let subDepth_btn_405 = document.getElementsByClassName('subDepth_btn_405');
let switchingArray2 = Array.from(subDepth_btn_405);
const fieldCheckbox_layout = document.getElementsByClassName('fieldCheckbox_layout');

window.addEventListener('DOMContentLoaded', () => { 
    checkField();
    fieldCheckboxValue();
});

// 해당 데이터셋으로 값 가져옵니다. //
const checkField = function checkField() {
    let fieldCheckReturn; 
    switchingArray2.forEach(Element=> {
        Element.addEventListener('click', ()=> {
            fieldCheckReturn = Element.dataset.bcode;
            console.log(fieldCheckReturn);
            detailcheckField(fieldCheckReturn);
        });
    });
}

const fieldCheckboxValue = function fieldCheckboxValue() {
    let selectCheck = document.getElementById('selectCheck');
}


// 여기서부터는 세부 파싱 과정이다. //
const detailcheckField = function detailcheckField(abc) {
    let errorHandler = 0;
    let number = 1;
    const areaName = ["youngup","sangdam","IT","Design","Service","Junmunjik","Medical","Produce",""];
    let youngup = {
            "1" : "기획전략",
            "2" : "마케팅광고",
            "3" : "홍보RP사무",
            "4" : "경리출납",
            "5" : "회계재무사무",
            "6" : "총무법무사무"
    };
    let sangdam = {
            "1" : "일반영업",
            "2" : "영업기획",
            "3" : "기술영업",
            "4" : "IT,솔루션영업",
            "5" : "광고영업",
            "6" : "금융영업",
    }
    let IT = {
        "1" : "웹 개발",
        "2" : "응용프로그램 개발",
        "3" : "시스템개발",
        "4" : "서버,네트워크 보안",
        "5" : "ERP분석설계",
        "6" : "DBA",
    }
    areaName.some(Element => {
        if(abc == Element) {
            checkBoxClear2();
            // 오브젝트 벨류의 파라미터에서 찾아오지 못한다.
            Object.values(eval(abc)).forEach(Element => {
                fieldCheckbox_layout[0].innerHTML += 
                `<div class="ch_label">
                    <input type="checkbox" id="selectCheck${number}" class="selectCheck" value="all">
                    <label name="selectCheck" class="findLabel" for="selectCheck${number}">${Element}</label>
                </div>`
                number++;
            })
            checkBoxResult();
            return true;
        }
    })
    if(errorHandler > 0) {
        alert("서비스에 문제가 생겼습니다. 잠시만 기다려주세요");
    }
}


function checkBoxClear2() {
    fieldCheckbox_layout[0].innerHTML = "";
}


function checkBoxResult() {
    // 셀렉 결과창
    const searchResultContainer = document.getElementsByClassName('searchResult');
    // 레이블 삽입용
    const labelText = document.getElementsByClassName('findLabel');
    const selectCheck = document.getElementsByClassName('selectCheck');
    let switchingSelectCheck = Array.from(selectCheck);

    searchResultContainer[0].innerHTML = "";
    //이벤트 감지 -> 레이블 삽입 //
    switchingSelectCheck.forEach(Element => {
        Element.addEventListener('click', () => {
            // 클릭 시 체크
            console.log(Element.checked);

            // 체크 된다면 //
            if(Element.checked == true) {
                let label_value = Number(Element.id.replace('selectCheck','')-1);
                searchResultContainer[0].innerHTML += `<span>${labelText[label_value].textContent}</span>`    
            }

            else {
                searchResultContainer[0].innerHTML = "";
            }

            // let label_value = Number(Element.id.replace('selectCheck','')-1);
            // searchResultContainer[0].innerHTML += `<span>${labelText[label_value].textContent}</span>`
        })   
    })
}



//