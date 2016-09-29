// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks

//= require_tree .

function ready_f() {

  // navigation button
  $('#button1-down').click(function(e){
    
    // initialize variables
    var button = $(this);
    var target_hash = "";
    var location = $(window).scrollTop(); // this is the distance from the top of the window to the top of the page  
    var scrollBottom = $(window).scrollTop() + $(window).height();
    var bottomPosition = $(document).height();

    e.preventDefault(); // don't do anything stupid

    // determine target hash based on page location compared to location of anchor tags
    // $(element).offset().top is the distance from the top of the element to the top of the page
    if (scrollBottom >= (bottomPosition - 10) ){
      target_hash = "#intro-section";
    } else if (location < $("#second-section").offset().top) {
      target_hash = "#second-section";
    } else if (location < $("#third-section").offset().top && location >= $("#second-section").offset().top) {
      target_hash = "#third-section";
    } else if (location < ( $("#last-section").offset().top - 100 ) && location >= $("#third-section").offset().top) {
      target_hash = "#last-section";
    } else if (location >= ( $("#last-section").offset().top - 100 )) {
      target_hash = "#intro-section";
    }

    // quick flash for button to show click and then smooth scrolling
    button.animate({ 'background-color': 'green'}, 1, function() {
      button.animate({ 'background-color': 'navy'}, 1500 );
      // scroll smoothly
      $('html, body').animate({
        scrollTop: $(target_hash).offset().top
      }, 800, function(){
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = target_hash;
      });     
    }); 
  });
}


$(document).on('page:load', ready_f);
$(document).ready(ready_f);
