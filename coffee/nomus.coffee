requirejs.config({
	paths: {
		'jquery': '../node_modules/jquery/dist/jquery.min'
	}
	});

requirejs ['jquery'], () ->
	console.log($)
	$('body').css('background-color', 'lightgrey')