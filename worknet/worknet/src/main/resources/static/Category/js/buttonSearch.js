// 유사배열과, 배열에 대한 개념을 생각하자 . //
// foreach문에서 이벤트 리스너가 적용 될 수 있는 이유는 여기서는 Element가 html 이기 떄문이다. //
// dataset은 지원을 안하는지 하는데 애매한지 잘 모르겠다. 그냥 무시하고 써도 된다. //
let subDepth_btn_404 = document.getElementsByClassName('subDepth_btn_404');
let switchingArray = Array.from(subDepth_btn_404);
const checkBoxLayout = document.getElementsByClassName('checkbox_layout');  
const checkBoxLayoutLabel = checkBoxLayout[0].getElementsByTagName('label');
const searchResultContainer = document.getElementsByClassName('searchResult');

let parameterValue = "";


let lastResult = "";
let lastResult2 = "";
let codeArrayArea = new Array();
let codeArraybusiSize = new Array();
let codeArrayeduNm = new Array();
let checkid = [];
let baseCode = ['401','402','403'];

var arrNumber = new Array(); //배열선언

window.addEventListener('DOMContentLoaded', () => {
    
    

    let area = {
        "1" : "서울특별시",
        "2" : "부산광역시",
        "3" : "대구광역시",
        "4" : "인천광역시",
        "5" : "광주광역시",
        "6" : "대전광역시",
        "7" : "울산광역시",
        "8" : "경기도",
        "9" : "강원도",
        "10" : "충청북도",
        "11" : "충청남도",
        "12" : "전라북도",
        "13" : "전라남도",
        "14" : "경상북도",
        "15" : "경상남도",
        "16" : "제주특별자치도",
        "17" : "세종특별자치시",

        
    };
    let busiSize = {
            "1" : "대기업",
            "2" : "중소기업",
            "3" : "중견기업",
            "4" : "기타",
    }
    let eduNm = {
        "1" : "초졸이하",
        "2" : "중졸",
        "3" : "고졸",
        "4" : "대졸(2~3년)",
        "5" : "대졸(4년)",
        "6" : "박사",
    }




    checkArea(area,busiSize,eduNm);
    checkboxValue(area,busiSize,eduNm);
    urlParameter(area,busiSize,eduNm);
});

// 해당 데이터셋으로 값 가져옵니다. //
let checkArea = function checkArea(area,busiSize,eduNm) {
    let areaCheckReturn; 
    let tempCode = new Array();
    switchingArray.forEach(Element=> {
        Element.addEventListener('click', ()=> {
            areaCheckReturn = Element.dataset.bcode;
            areaCheckReturn2 = Element.dataset.bcode;
            let temp = Element.dataset.code;
            switch(temp) {
                case "401" :
  
                    if(codeArrayArea[0] == undefined || codeArrayArea[0] == temp) {
                        codeArrayArea[0] = temp;
                        codeArrayArea[1] = 'true';
                        codeArraybusiSize[1] = 'false';
                        codeArrayeduNm[1] ='false';
                        break;
                    }
                case "402" : 
                    if(codeArraybusiSize[0] == undefined || codeArraybusiSize[0] == temp) {
                        codeArraybusiSize[0] = temp;
                        codeArrayArea[1] = 'false';
                        codeArraybusiSize[1] = 'true';
                        codeArrayeduNm[1] ='false';
                        break;
                    }
                case "403" :
                    if(codeArrayeduNm[0] == undefined || codeArrayeduNm[0] == temp) {
                        codeArrayeduNm[0] = temp;
                        codeArrayArea[1] = 'false';
                        codeArraybusiSize[1] = 'false';
                        codeArrayeduNm[1] ='true';
                        break;
                    }
            }

            detailCheckArea(areaCheckReturn,codeArrayArea,codeArraybusiSize,codeArrayeduNm,area,busiSize,eduNm);
            //detailCheckArea(areaCheckReturn,codeArrayArea,codeArraybusiSize,codeArrayeduNm);
            //detailCheckArea(areaCheckReturn);
        });
    });
}

const checkboxValue = function checkboxValue() {
    let selectCheck = document.getElementById('selectCheck');
}


// 여기서부터는 세부 파싱 과정이다. //
const detailCheckArea = function detailCheckArea(areaCheckReturn,codeArrayArea,codeArraybusiSize,codeArrayeduNm,area2,busiSize2,eduNm2) {
    const ch_label2 = document.getElementsByClassName('ch_label');
    let errorHandler = 0;
    let tempnumber = 0;
    const conditionName = ["area","busiSize","eduNm"];
    
    let area = area2;
    let busiSize = busiSize2;
    let eduNm = eduNm2;

    conditionName.some(Element => {
        if(areaCheckReturn == Element) {
            // 체크 값 있는지 확인할 것.

            checkBoxClear();
            Object.values(eval(areaCheckReturn)).forEach(Element => {
                checkBoxLayout[0].innerHTML += 
                `<div class="ch_label">
                    <input type="checkbox" id="selectCheck${tempnumber}" name="area" class="selectCheck" value="${Element}">
                    <label name="selectCheck" class="findLabel" for="selectCheck${tempnumber}">${Element}</label>
                </div>`
                tempnumber++;
            })
            
            if(areaCheckReturn == 'area') {
                codeArrayArea.some(ele => {
                    if(typeof(ele) == "number" ){
                        ch_label2[ele].firstElementChild.checked = true;
                    }
                });
            }
            else if(areaCheckReturn == 'busiSize') {
                codeArraybusiSize.some(ele => {
                    if(typeof(ele) == "number" ){
                        ch_label2[ele].firstElementChild.checked = true;
                    }
                });
            }
            else {
                codeArrayeduNm.some(ele => {
                    if(typeof(ele) == "number" ){
                        ch_label2[ele].firstElementChild.checked = true;
                    }
                });
            }
            checkBoxResult(codeArrayArea,codeArraybusiSize,codeArrayeduNm);
            return true;
        }
    })
    if(errorHandler > 0) {
        alert("서비스에 문제가 생겼습니다. 잠시만 기다려주세요");
    }
}


function checkBoxClear() {
    checkBoxLayout[0].innerHTML = "";
}


function checkBoxResult(codeArrayArea,codeArraybusiSize,codeArrayeduNm) {
    // 셀렉 결과창
    
    // 레이블 삽입용
    let labelText = document.getElementsByClassName('findLabel');
    const selectCheck = document.getElementsByClassName('selectCheck');
    let switchingSelectCheck = Array.from(selectCheck);


    let codeArray2 = new Array();

    if(codeArrayArea[1] == 'true') {
        codeArray2 = codeArrayArea;
    }else if(codeArraybusiSize[1] == 'true'){
        codeArray2 = codeArraybusiSize;
    }else{
        codeArray2 = codeArrayeduNm;
    }

    let label_value;


    let spaceValue = ", &nbsp&nbsp";
    //searchResultContainer[0].innerHTML = "";
    //이벤트 감지 -> 레이블 삽입 //
    switchingSelectCheck.forEach(Element => {
        Element.addEventListener('click', () => {
            // 클릭 시 체크

            // 체크 된다면 //
            if(Element.checked == true) {
                label_value = Number(Element.id.replace('selectCheck',''));
                codeArray2.push(label_value);
                searchResultContainer[0].innerHTML += `<span>${labelText[label_value].textContent}</span>`
                lastResult += labelText[label_value].textContent;
                lastResult += spaceValue;

                // 오토체크 함수 넣어야할 부분 //               
            }

            else if(Element.checked == false) {
                let a = Number(Element.id.replace("selectCheck",""));
                codeArray2.forEach(Ele=> {
                    if(Ele == a) {
                        let idx = codeArray2.indexOf(a);
                        codeArray2.splice(idx,1);
                    }
                })
                let tempElementLabelText = Element.parentElement.lastElementChild.textContent;
                lastResult = lastResult.replace(tempElementLabelText+spaceValue,"");
                basicResult = lastResult.replace(tempElementLabelText+spaceValue,"");
            }

            searchResultContainer[0].innerHTML = `${lastResult}`;
            // 한번 클릭 될 때 마다 그 숫자에 해당하는 만큼 삭제시켜야함.

           
            if(codeArrayArea[1] == 'true') {
                codeArrayArea = codeArray2;
            }else if(codeArraybusiSize[1] == 'true'){
                codeArraybusiSize = codeArray2;
            }else{
                codeArrayeduNm = codeArray2;
            }
            // let label_value = Number(Element.id.replace('selectCheck','')-1);
            // searchResultContainer[0].innerHTML += `<span>${labelText[label_value].textContent}</span>`
        })   
    })
}




function urlParameter(area,busiSize,eduNm) {

    const btnSubmit = document.getElementsByClassName('btnSubmit');
    const wantedTitle = document.getElementById('wantedTitle');

    btnSubmit[0].addEventListener('click', (event) => {
        event.preventDefault();
        let parameter;
        for(let i=0; i<=29; i++) {
            parameter = searchResultContainer[0].textContent.replace(", &nbsp&nbsp","");
        }

        let LastwantedTitle= "&wantedTitle=";
        LastwantedTitle = LastwantedTitle+wantedTitle.value; 
        // 서치 값 추가하기 //

        let a  = parameterCondition(area,busiSize,eduNm,parameter);


        let = workURL = "workRegion=";
        let = busiSizeURL = "&busiSize=";
        let = eduNmURL = "&eduNm=";
        let = baseURL = "/jobs/category.do?"+workURL+a[0]+ busiSizeURL+a[1]+ eduNmURL+a[2] + LastwantedTitle;
        window.location.href = baseURL;
    })
}


const parameterCondition = function parameterCondition(area2,busiSize2,eduNm2,parameter) {
    let areaParameter = "";
    let busiSizeParameter = "";
    let eduNmParameter = "";
    //최종 값 들어갈 변수 

    let area = Object.values(area2);
    let busiSize = Object.values(busiSize2);
    let eduNm = Object.values(eduNm2);
    let tempParamter;
    let paramSearchArray = new Array();
    let z = 0;
    tempParamter = parameter.replace(/(\s*)/g,'');
    paramSearchArray = tempParamter.split(",");

    area.forEach(Element => {
        for(let z=0; z<=paramSearchArray.length; z++) {
            if(Element == paramSearchArray[z]) {
                areaParameter += (paramSearchArray[z] + ",");
            }
        }
    })

    busiSize.forEach(Element => {
        for(let z=0; z<=paramSearchArray.length; z++) {
            if(Element == paramSearchArray[z]) {
                busiSizeParameter += (paramSearchArray[z] + ",");
            }
        }
    })

    eduNm.forEach(Element => {
        for(let z=0; z<=paramSearchArray.length; z++) {
            if(Element == paramSearchArray[z]) {
                eduNmParameter += (paramSearchArray[z] + ",");
            }
        }
    })


    return [areaParameter,busiSizeParameter,eduNmParameter];

}




