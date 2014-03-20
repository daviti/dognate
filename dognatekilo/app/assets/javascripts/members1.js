
// function set_body_width() {
// 	var ww = $(window).width();
// 	$('body').width(ww); //evaluates to body width = window width
// }


//function for the carousel pictures
function carousel(id) {
	var bgimgs = [ 'http://www.bubblews.com/assets/images/news/521013543_1385596410.jpg', 'http://www.adogsdayout.com/wp-content/uploads/2012/07/Dogs1.jpg', 'http://pixabay.com/get/b1a161cc546e46018c9a/1395257917/dog-190056_1280.jpg?direct'];
	var color = bgimgs[id];
	var count = 3;
	$('.carousel')
	$('.carousel').css("background", 'url('+color+') center no-repeat');
	id = id + 1;
	if(id==count) id = 0;
	

	setTimeout('carousel('+id+')', 10000 );
}




$(document).ready(function() {
		carousel(0);

		// set_body_width();
		// $(window).bind('resize', function() { 
		// 	set_body_width(); 
		// });

		//for the parallax display
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

	    //for the supply buttons
		$('#supplieslist').hide();

		$('#viewsupplies').click(
			function(){$('#supplieslist').fadeIn();
		});
		$('#hidesupplies').click(
			function(){$('#supplieslist').fadeOut();
		});

		$('#supplymodal').modal('show');
		$('#opensupply').click(function(){
			// alert('hey');
			// $('#myModal').modal(options)
		});

		$(document).on('scroll', function() {
			$('.navbar').fadeTo('slow', 1, function() {
				$(this).css('background', 'rgba(255, 255, 254, 0.6');
			});
		});



		
});
