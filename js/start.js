
fallback.load({

	jQuery: ['//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js',
	'js/vendor/jquery-1.11.2.min.js'
	],

	FontAwesome: ['//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', 
	'js/vendor/fontawesome/css/font-awesome.css'],

	'Bootstrap': ['//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js', 
	'js/vendor/bootstrap.js'],

	Handlebars: 'js/vendor/handlebars.min.js',

	'jQuery.ui':["//code.jquery.com/ui/1.12.0/jquery-ui.min.js"],

	'MultiDatesPicker':["js/vendor/MultiDatesPicker/jquery-ui.multidatespicker.js"],
	//.multidatespicker
	//'jquery.magnific-popup': '//cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.js'
	
	//,


	'script.js': 'js/script.js'
	
}, {
	shim: {
		'script.js' :['jQuery', 'Handlebars','jQuery.ui'],
		'index.php': ['script.js','FontAwesome'],
		'Bootstrap': ['jQuery'],
		'Handlebars': ['jQuery'],
		'jQuery.ui': ['jQuery'],
		'MultiDatesPicker': ['jQuery.ui']
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