window.addEventListener('DOMContentLoaded', () => { 
	const ratingSubmit = document.getElementsByClassName('ratingSubmit');
	
    
	ratingSubmit[0].addEventListener('click', () => {
		const textmessage = document.getElementsByClassName('text-message');
	    const tempratingCount = textmessage[0].textContent;
		let ratingCount = tempratingCount.charAt(1);
	    let parameterArray = get_query();
	    parameterArray.ratingValue = ratingCount;
	    console.log(parameterArray);

//	    {wantedAuthNo: "KJKF002005110003", IsRecommend: "true"}
//	    {wantedAuthNo: "KJKF002005110003"}
	    
	    $.ajax({
	        // Data 
	        type: 'post',
	        url: '/jobs/rating',
	        data: JSON.stringify(parameterArray),
	        contentType: "application/json; charset=utf-8",//보낼 데이터 방
	        dataType : "text",//받을 데이터방식
	        success: function(args) {
	            console.log(args);
	            alert(args);
	        },
	        error:function(e){ 
	        } 

	    
	    });
	})


	function get_query(){
	    var url = document.location.href;
	    var qs = url.substring(url.indexOf('?') + 1).split('&');
	    for(var i = 0, result = {}; i < qs.length; i++){
	        qs[i] = qs[i].split('=');
	        result[qs[i][0]] = decodeURIComponent(qs[i][1]);
	    }
	    return result;
	}
});