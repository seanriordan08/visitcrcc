
$(document).ready(function() {
  $('#hamburger-menu').click(function () {
    $(this).toggleClass('open');
    $('.nav').fadeToggle(100);
  });
});