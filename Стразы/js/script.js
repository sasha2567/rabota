$(document).ready(function(){
	
	$(window).resize(function(){
		console.log(window.innerWidth);
	});
	
	$('.section-links .categories-title').click(function(){
		$('.section-links ul.categories').slideToggle(500);
	});
    
    $('nav.main-nav-adaptive .sections-title').click(function(){
		$('nav.main-nav-adaptive ul.sections-links-block').slideToggle(500);
	});
	
});