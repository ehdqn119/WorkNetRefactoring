window.addEventListener('DOMContentLoaded', function(){
    const recommandContainer = document.getElementsByClassName('snip1384');
    eventHandler(recommandContainer);  
})


function eventHandler(recommandContainer) {   
    Array.from(recommandContainer).forEach(function(element,index) {
        element.addEventListener('click',() => {


            //URL 함수 사용//
            let url = addurl();
            let categoryUrl = "/jobs/category.do?"
            //이 부분 함수화 해서 리팩토링 해야한다//
            if(index == 0){
                const seoul = url[0] + "서울";
                console.log(url[3]+seoul+url[1]+url[2]);
                window.location.href = origin+categoryUrl+seoul+url[1]+url[2]
            }
            if(index == 1) {
                const daejol4 = url[1] += "대기업"; 
                console.log(url[3]+url[0]+url[2]+daejol4);
                window.location.href = origin+categoryUrl+url[0]+url[1]+url[2]
            };
            if(index == 2) {
                const majorCompany = url[2] += "대졸(4년)";
                console.log(url[3]+url[0]+majorCompany+url[1]);
                window.location.href = origin+categoryUrl+url[0]+url[1]+url[2]
            }


            //이 부분 함수화 해서 리팩토링 해야한다. //
        })
    });
}


function addurl() {
    const BaseworkResion = "workRegion=";
    const BasebusiSize = "&busiSize=";
    const BaseeduNm = "&eduNm=";
    const origin = location.origin;
    
    return [BaseworkResion, BasebusiSize, BaseeduNm, origin];
}
