// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require materialize

function list() {
  document.getElementById('list').style.display = 'block';
}

function dashboard() {
  document.getElementById('dashboard').style.display = 'block'
  document.getElementById('sbp').style.display = 'none'
  document.getElementById('loadingz').style.display = 'none'
  document.getElementById('advertising').style.display = 'none'
  document.getElementById('landrates').style.display = 'none'
}

function sbp() {
  document.getElementById('sbp').style.display = 'block'
  document.getElementById('loadingz').style.display = 'none'
  document.getElementById('advertising').style.display = 'none'
  document.getElementById('landrates').style.display = 'none'
  document.getElementById('dashboard').style.display = 'none'
}

function landrates() {
  document.getElementById('landrates').style.display = 'block'
  document.getElementById('sbp').style.display = 'none'
  document.getElementById('advertising').style.display = 'none'
  document.getElementById('loadingz').style.display = 'none'
  document.getElementById('dashboard').style.display = 'none'
}

function advertising() {
  document.getElementById('advertising').style.display = 'block'
  document.getElementById('landrates').style.display = 'none'
  document.getElementById('sbp').style.display = 'none'
  document.getElementById('loadingz').style.display = 'none'
  document.getElementById('dashboard').style.display = 'none'
}

function loadingz() {
  document.getElementById('loadingz').style.display = 'block'
  document.getElementById('advertising').style.display = 'none'
  document.getElementById('landrates').style.display = 'none'
  document.getElementById('sbp').style.display = 'none'
  document.getElementById('dashboard').style.display = 'none'
}

function email() {
                var data = {
                  service_id: 'gmail',
                  template_id: 'template_0BA8c1cI',
                  user_id: 'user_c5t23MJmqmZzBvqzU01b1',
                  // pass parameters from excel file
                  template_params: {
                      'from_name': 'Siaya County',
                      'to_name': 'Hezron Muriuki',
                      'mail_to': 'hezron@nouveta.tech',
                      'message_html': 'Hi, the is a request to pay or renew your premium with us. Click link below to if you wish to pay now',
                      'g-recaptcha-response': '03AHJ_ASjnLA214KSNKFJAK12sfKASfehbmfd...'
                  }
                };

                $.ajax('https://api.emailjs.com/api/v1.0/email/send', {
                  type: 'POST',
                  data: JSON.stringify(data),
                  contentType: 'application/json'
                }).done(function() {
                  alert('Your mail is sent!');
                }).fail(function(error) {
                  alert('Oops... ' + JSON.stringify(error));
                });
}

function sms() {
    const puretext = require('puretext');
    require('request');

    let text = {
        // To Number is the number you will be sending the text to.
        toNumber: '+254728592629',
        // From number is the number you will buy from your admin dashboard
        fromNumber: '+19705074517',
        // Text Content
        smsBody: 'From rails into thy DMS',
        //Sign up for an account to get an API Token
        apiToken: 'jvzhpg'
    };

    puretext.send(text, function (err, response) {
      if(err) console.log(err);
      else console.log(response)
    })
}
