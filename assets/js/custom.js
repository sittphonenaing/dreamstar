//global
var winWidth;
function checkWidthSize() {
    winWidth = $(window).width();
}

function ScrollHeader() {	
	var ToHeader = $('header');
	var scrollInterval = function() {
	        	ToHeader.addClass("down");
	        };
	var scrollChecker = function () {
        if ($(this).scrollTop() > 200) {
            ToHeader.addClass('scroll');
            $(".nav-main, .wrapper").addClass('scroll');
            setTimeout(scrollInterval, 200);
        } else {
            ToHeader.removeClass('scroll down');
            $(".nav-main, .wrapper").removeClass('scroll');
            $(".search, .search-toggle").removeClass("active");
        }
    };
    scrollChecker();
    $(window).scroll(scrollChecker);
}

function ZoomElevate() {
	$('.img-product .large').elevateZoom({
		gallery: 'product-thumbnails',
		zoomType: "lens",
		containLensZoom: true,
		galleryActiveClass: "active"
	});
	return false;
}

function ZoomOwlCarousel() {
	if(winWidth < 767) {
		$('#product-thumbnails .item').zoom({
			on:'toggle',
	        touch: false
		});
	} else {
		$('#product-thumbnails .item').trigger('zoom.destroy'); // remove zoom
	}
}

$(function(){
	
	$(".inner-nav-main > li > a").click(function() {
		if ($(this).parent().find(".nav-sub").length > 0) {		
			$(this).parent().toggleClass("active");	
			$(".nav-sub").slideToggle().toggleClass("active");
			if ($(".nav-sub").hasClass("active")) {
				$(this).find("i").replaceWith("<i class='fa fa-angle-down'></i>");
			} else {
				$(this).find("i").replaceWith("<i class='fa fa-angle-right'></i>");
			}
		}
	});
	
	$(".nav-toggle").click(function() {
		$(".nav-main").toggleClass("active");
	});
	
	$(".search-toggle").click(function() {
		$(".search, .search-toggle").toggleClass("active");
	});
	
	$(".sub-menu > a").click(function(e) {
		e.preventDefault();		
		if ($(this).parent().hasClass("active")) {
			$(this).find("span").replaceWith("<span class='fa fa-angle-right'></span>");
		} else {
			$(this).find("span").replaceWith("<span class='fa fa-angle-down'></span>");
		}
	});
	
	$('.panel-heading a[data-toggle="collapse"]').on('click', function () {   
		$('.panel-heading a[data-toggle="collapse"]').removeClass('active');
		$('.panel-heading a[data-toggle="collapse"]').parent().parent().parent().removeClass('active');
		$(this).addClass('active');
		$(this).parents().eq(2).addClass('active');
	});
	
	$(".sub-menu .sub-menu-toggle").click(function(e) {
		e.preventDefault();		
		$(this).parent().toggleClass("active");
	});
	
	if($('.product').length >=1) {
		$("#product-thumbnails").owlCarousel({
			navigation: true,
			pagination: false,
			navigationText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
			itemsDesktopSmall : [960,4],
			itemsTablet : [752, 1],
			touchDrag : false,
			lazyLoad : false,
			responsiveRefreshRate : 0
		});
	}
	
	$(".list-slide").owlCarousel({
		navigation: true,
		pagination: false,
		navigationText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
		itemsCustom : [
			[0, 2],
			[540, 2],
			[752, 4],
			[960, 6]
			]
	});
	
	$(".slide-product").owlCarousel({
		navigation: true,
		navigationText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
		singleItem: true,
		touchDrag : true
	});
	
	setTimeout(function() {
		$(".list-thumbnail .caption h3, .list-thumbnail .caption p").dotdotdot();
	}, 100);

	$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
		setTimeout(function() {
			$(".list-thumbnail .caption h3, .list-thumbnail .caption p").dotdotdot(e);
		}, 500);
	});
	
	
	if ($(".thumbnail > a > img").hasClass("hover")) {
		$(this).addClass("image");
	}
	
	/*qty button*/
	$(".ddd").on("click", function(e) {
		e.preventDefault();
		
	    var $button = $(this);
	    var oldValue = $button.closest('.quantity').find("input.quntity-input").val();
	
	    if ($button.text() == "+") {
	        var newVal = parseFloat(oldValue) + 1;
	    } else {
	        // Don't allow decrementing below zero
	        if (oldValue > 0) {
	            var newVal = parseFloat(oldValue) - 1;
	        } else {
	            newVal = 0;
	        }
	    }
	    $button.closest('.quantity').find("input.quntity-input").val(newVal);	
	});
	
	$("#form-contact").validate({
		submitHandler: function(form) {
			$.ajax({
				type: "post",
				url: "contact-send.php",
				data: $("#form-contact").serialize(),
				success: function(data) {
					$('#form-contact').html('Edit text "custom.js"');
				}
			})
		}
	});
	
	/*$('.carousel.slide').carousel({
		interval: 7500
	})*/
	
	$( "#slider-range" ).slider({
		range: true,
		min: 0,
		max: 500,
		values: [ 75, 300 ],
		slide: function( event, ui ) {
			$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
		}
	});
	$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
		" - $" + $( "#slider-range" ).slider( "values", 1 ) );
	
	$('#slider-range').draggable();
	
	$("#validate-form").validate();
		
	ScrollHeader();
	checkWidthSize();
	ZoomElevate();
	ZoomOwlCarousel();
});

$(window).resize(function() {
	checkWidthSize();
	$('.zoomContainer').remove();
	ZoomElevate();
	ZoomOwlCarousel();
});