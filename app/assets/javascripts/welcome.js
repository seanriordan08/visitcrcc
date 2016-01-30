$(document).ready(function(){
  $('.button-collapse').sideNav();
  $('.parallax').parallax();
  $(".dropdown-button").dropdown({hover: true});

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
