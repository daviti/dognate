
function set_body_width() {
	var ww = $(window).width();
	$('body').width(ww); //evaluates to body width = window width
}



$(document).ready(function() {
		set_body_width();
		$(window).bind('resize', function() { 
			set_body_width(); 
		});


	    $('section[data-type="background"]').each(function(){
	    	var $bgobj = $(this); // assigning the object
	 		$(window).scroll(function() {
				var yPos = -($(window).scrollTop() / $bgobj.data('speed')); 
 
				   // Put together our final background position
	            var coords = '50% '+ yPos + 'px';
	 
	            // Move the background
	            $bgobj.css({ backgroundPosition: coords });
				});
		});


		$('#supplieslist').hide();

		$('#viewsupplies').click(
			function(){$('#supplieslist').show();
		});
		$('#hidesupplies').click(
			function(){$('#supplieslist').fadeOut();
		}); 
});
