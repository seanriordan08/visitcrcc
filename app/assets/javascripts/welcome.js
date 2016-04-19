$(document).ready(function(){

  $('.parallax').parallax();
  $('.button-collapse').sideNav();
  $('.dropdown-button').dropdown({hover: true});

  $('.modal-trigger').leanModal({
    opacity: .5
  });

  $('.collapsible-header').on("click", function(){
    position = $(this).position();
    $('.modal-content').animate({
        scrollTop: position.top
      },
      300,
      "easeOutQuint"
    );
  });

  jQuery.validator.addClassRules("user_first_name", {
    required: true,
    minlength: 2
  });

  $("#new_user").validate({
    onkeyup: false,    //this setting is what you need
    rules: {
      user_first_name: {
        required: true,
        minlength: 3
      },
      user_password: {
        required: true,
        minlength: 5
      }
    },
    //For custom messages
      messages: {
        password:{
          required: "Enter a password",
          minlength: "Enter at least 5 characters"
        }
      },
      errorElement : 'div',
        errorPlacement: function(error, element) {
        var placement = $(element).data('error');
        if (placement) {
          $(placement).append(error)
        } else {
          error.insertAfter(element);
        }
      }
  });

  $(".swivel_down").on("click", function(){
    $(this).find(".flip-able").toggleClass("arrow_down");
  })

});
