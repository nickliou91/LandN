// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require owl.carousel
//= require bootstrap


$(document).ready(function() {
  $(".owl-carousel").owlCarousel({
 
      // navigation : true, // Show next and prev buttons
      autoPlay: 5000,
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem:true,
      transitionStyle:"fade"
 
  });

		$("#photo_file").change(function() {
	    var file = $(this).get(0);
	    if (file.size && file.size > 2621440) {
	        console.log("Hi")
	    } else {
	        console.log("Bye")
	    }
	});

});