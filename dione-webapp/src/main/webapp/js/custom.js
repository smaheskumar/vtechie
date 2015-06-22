$(document).ready(function(){
	$(window).scroll(function () {
		if ($(window).scrollTop() > 540) {
			$("#navigation").css("background-color","#2e4050");
		} else {
			$("#navigation").css("background-color","rgba(46, 64, 80, 0.0)");
		}
		
		
		if ($(window).scrollTop() > 180) {
			$("#innernavigation").addClass("inner-nav");
		} else {
			$("#innernavigation").addClass("inner-nav");
		}
		
	});
});