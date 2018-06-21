$(document).on('turbolinks:load', function(){
	$('#main-trigger').on('click', function(){
		$('#tags_box').fadeToggle();
	});
});