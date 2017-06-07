$(document).ready(function() {
	$("#menu_yhm ul li").hover(function() {
		$(this).children("ul").show();
		$(this).addClass("li01");

	}, function() {
		$(this).children("ul").hide();
		$(this).removeClass("li01");
	});

	$('.flexslider').flexslider({
		directionNav : true,
		pauseOnAction : false,
		slideshowSpeed : 3000
	});
});