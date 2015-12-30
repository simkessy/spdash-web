$(function() {
  $(".f-item").hover(function () {
    $(this).toggleClass("f-item-hover");
  });

  $("#new_contact").formValidation({
    framework: 'bootstrap',
    icon: {
      valid: 'fa fa-check',
      invalid: 'fa fa-times',
      validating: 'fa fa-refresh'
    },
    fields: {
      name: {
        validators: {
          notEmpty: {
            message: 'Your name is required'
          },
          regexp: {
            regexp: /^[a-zA-Z\s]+$/,
            message: 'Your name can only be alphabetical'
          }
        }
      },
      email: {
        validators: {
          notEmpty: {
            message: 'The email address is required'
          },
          emailAddress: {
            message: 'The input is not a valid email address'
          }
        }
      },
      message: {
        validators: {
          notEmpty: {
            message: 'The message is required'
          },
          stringLength: {
            max: 700,
            min: 10,
            message: 'The message must be greater than 10 characters long'
          }
        }
      }
    }
  });

});
