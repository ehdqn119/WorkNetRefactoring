// 리프레쉬
const refreshClick = document.getElementsByClassName("refreshs");
Array.from(refreshClick).forEach(s => {
    s.addEventListener("click", () => {
        history.go(0);
    });
});
// refreshs class 추가함 i, span 태그에

const goHome = document.getElementsByClassName("goHome");

Array.from(goHome).forEach(s => {
    s.addEventListener("click", () => {
        window.location.href = "/jobs";
    });
});
// goHome class 추가 i, span 태그에 

const newPage = document.getElementsByClassName("newPage");
Array.from(newPage).forEach(s => {
    s.addEventListener("click", () => {
        window.open("/jobs");
    });
});
// newPage class 추가 i, span 태그에

const category = document.getElementsByClassName("recommand");
Array.from(category).forEach(s => {
    s.addEventListener("click", () => {
    	 window.location.href = "/jobs/category.do";
    });
});
// recommand class 추가 i, span 태그에