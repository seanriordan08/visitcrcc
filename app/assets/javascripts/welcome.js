$(document).on("page:change",function(){
  $('.button-collapse').sideNav();
  $('.parallax').parallax();
  $(".dropdown-button").dropdown({hover: true});
  $('.modal-trigger').leanModal({
    opacity: .5
  });
});
