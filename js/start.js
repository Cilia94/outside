
fallback.load({

	jQuery: ['http://code.jquery.com/jquery-3.1.1.js',
	'js/vendor/jquery-3.1.1.js'
	],

	FontAwesome: ['//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', 
	'js/vendor/fontawesome/css/font-awesome.css'],

	'Bootstrap': ['//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js', 
	'js/vendor/bootstrap.js'],

	Handlebars: 'js/vendor/handlebars.min.js',

	'jQuery.ui':['https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js'],

	'script.js': 'js/script.js'
	
}, {
	shim: {
		'script.js' :['jQuery', 'Handlebars','jQuery.ui'],
		'index.php': ['script.js','FontAwesome'],
		'Bootstrap': ['jQuery'],
		'Handlebars': ['jQuery'],
		'jQuery.ui': ['jQuery']
		//,'jquery.magnific-popup': 'jQuery'
	},

	 callback: function(success, failed) {
        // Inline Callback
        //console.log(success, failed);
    }
});

fallback.ready(function() {
	// Execute my code here!
	//console.log("fallback is ready");
});