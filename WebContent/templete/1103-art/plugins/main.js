$(document).ready(function () {
	$(".panel-link").on("click", function () {
		var a = $(this).closest(".panel"),
			b = $(this).find("i"),
			c = a.find(".panel-body");
		a.attr("style") ? c.slideToggle(200, function () {
			a.removeAttr("style")
		}) : (c.slideToggle(200), a.css("height", "auto")), b.toggleClass("fa-chevron-up fa-chevron-down")
	})
	
	$(".more_conditions").on("click", function () {
		$('.conditions').toggle();
		$(this).find('i').toggleClass('fa-chevron-up fa-chevron-down');
	})
	
	// 手風琴
	$('.togglebox ul.accordionPart li div.qa_title').hover(function(){
		$(this).addClass('qa_title_on');
	}, function(){
		$(this).removeClass('qa_title_on');
	}).click(function(){
		$(this).next('div.qa_content').slideToggle();
		$(this).toggleClass('icon_r');;
	}).siblings('div.qa_content').hide();
	
	$('.togglebox ul.accordionPart li div.qa_content:first').show();

});