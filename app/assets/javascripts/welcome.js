$(document).ready(function(){
  $('.parallax').parallax();
  //$('.collapsible').collapsible();
  $('.button-collapse').sideNav();
  $('.dropdown-button').dropdown({hover: true});

  $('.modal-trigger').leanModal({
    opacity: .5
  });

  $('.collapsible-header').one("click", function(){
    $('.modal-content').animate({
        scrollTop: $('.modal-content').height()
      },
      300,
      "easeOutQuint"
    );
  });


});
