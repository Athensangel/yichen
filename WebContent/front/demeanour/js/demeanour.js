$(function() {
	$('.demeanour').filterizr();
	$('.time li').on('click', function() {
		$(this).toggleClass('active').siblings().removeClass('active');
	});
});