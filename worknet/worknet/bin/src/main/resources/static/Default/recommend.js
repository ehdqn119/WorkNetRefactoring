$(document).ready(function(){
    $('.slider').bxSlider({
      minSlides: 1,
      maxSlides: 3,
      moveSlides: 1,
      slideWidth: 600,
      adaptiveHeight : true,
      adaptiveHeightSpeed : 1000,
	  pagerType : 'full',
	  touchEnabled : false
    });
  });