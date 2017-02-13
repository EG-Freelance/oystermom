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
  
  // disable subscription buttons when necessary fields aren't filled in
  function disable_buttons(){
    if($('#email').val() == "" || $('#first_name').val() == ""  || $('#last_name').val() == "" || $('#location').val() == ""){
      $('#subscribe-button').prop('disabled', true);
    }else{
      $('#subscribe-button').prop('disabled', false);
    }
    
    if($('#email').val() == ""){
      $('#unsubscribe-button').prop('disabled', true);
    }else{
      $('#unsubscribe-button').prop('disabled', false);
    }
  }
  
  $(window).load(disable_buttons);
  
  $('#email').keyup(disable_buttons);
  $('#first_name').keyup(disable_buttons);
  $('#last_name').keyup(disable_buttons);
  $('#location').keyup(disable_buttons);

  // navigation button
  $('#button1-down').click(function(e){
    
    // initialize variables
    var button = $(this);
    var target_hash = "";
    var location = $(window).scrollTop(); // this is the distance from the top of the window to the top of the page  
    var scrollBottom = $(window).scrollTop() + $(window).height();
    var bottomPosition = $(document).height();
    
    // rotate the arrow when clicking to the bottom
    function AnimateRotate(sd, ed){
      var elem = $("#arrow");

      $({deg: sd}).animate({deg: ed}, {
        duration: 2000,
        step: function(now){
          elem.css({
            transform: "rotate(" + now + "deg)"
          });
        }
      });
    }

    e.preventDefault(); // don't do anything stupid

    // determine target hash based on page location compared to location of anchor tags
    // $(element).offset().top is the distance from the top of the element to the top of the page
    if (scrollBottom >= (bottomPosition - 10) ){
      target_hash = "#intro-section";
      if($('#arrow').css('transform').split(", ")[1] == "-1"){
        AnimateRotate(270,90);
      }
    } else if (location < $("#first-section").offset().top) {
      target_hash = "#first-section";
      if($('#arrow').css('transform').split(", ")[1] == "-1"){
        AnimateRotate(270,90);
      }
    } else if (location < $("#second-section").offset().top && location >= $('#first-section').offset().top) {
      target_hash = "#second-section";
      if($('#arrow').css('transform').split(", ")[1] == "-1"){
        AnimateRotate(270,90);
      }
    } else if (location < $("#third-section").offset().top && location >= $("#second-section").offset().top) {
      target_hash = "#third-section";
      if($('#arrow').css('transform').split(", ")[1] == "-1"){
        AnimateRotate(270,90);
      }
    } else if (location < ( $("#last-section").offset().top - 100 ) && location >= $("#third-section").offset().top) {
      target_hash = "#last-section";
      AnimateRotate(90,270);
    } else if (location >= ( $("#last-section").offset().top - 100 )) {
      target_hash = "#intro-section";
      if($('#arrow').css('transform').split(", ")[1] == "-1"){
        AnimateRotate(270,90);
      }
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
