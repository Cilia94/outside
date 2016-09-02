//jquery ui enkel inladen wanneer jquery is ingeladen

fallback.load({

	jQuery: ['//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js',
	'js/vendor/jquery-1.11.2.min.js'
	],

	fontAwesome: ['//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', 
	'js/vendor/fontawesome/css/font-awesome.min.css'],
	

	Bootstrap: [ 'js/vendor/bootstrap.min.js'
	],

	Handlebars: [ 'js/vendor/handlebars.min.js'
	],

	'script.js': 'js/script.js'
	
}, {
	shim: {
		'script.js' :['jQuery', 'Handlebars'],
		'index.php': 'script.js',
		'Bootstrap': 'jQuery',
		'Handlebars': 'jQuery'
	}
});

fallback.ready(function() {
	// Execute my code here!
	//console.log("fallback is ready");
	//jquery werkt
});