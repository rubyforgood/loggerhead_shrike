/**
 * Contact form
 */

$(document).ready(function(e) {
  $('#form_sendemail').submit(function(e) {
    $.ajax({
      url: 'sendmail.php',
      type: 'POST',
      data: $(this).serialize(),
      dataType: 'json',
      beforeSend: function (XMLHttpRequest) {
        //
        $('#form_sendemail .has-error').removeClass('has-error');
        $('#form_sendemail .help-block').html('').hide();
      },
      success: function( json, textStatus ) {
        if( json.error ) {
          // Error messages
          if( json.error.name ) {
            $('#form_sendemail input[name="name"]').parent().addClass('has-error');
            $('#form_sendemail input[name="name"]').next('.help-block').html( json.error.name ).slideDown();
          }
          if( json.error.email ) {
            $('#form_sendemail input[name="email"]').parent().addClass('has-error');
            $('#form_sendemail input[name="email"]').next('.help-block').html( json.error.email ).slideDown();
          }
          if( json.error.message ) {
            $('#form_sendemail textarea[name="message"]').parent().addClass('has-error');
            $('#form_sendemail textarea[name="message"]').next('.help-block').html( json.error.message ).slideDown();
          }
          if( json.error.recaptcha ) {
            $('#form-captcha').addClass('has-error');
            $('#form-captcha .help-block').html( json.error.recaptcha ).slideDown();
          }
        }
        // Refresh Captcha
        grecaptcha.reset();
        //
        if( json.success ) {

          // Reset form
          $("#form_sendemail")[0].reset();

          // Generate alert
          var smartAlerts = new SmartAlerts();
          smartAlerts.generate("success", "Your message has been sent successfully!");
        }
        
      },
      complete: function( XMLHttpRequest, textStatus ) {
        //
      }
    });
    
    return false;
  });
});