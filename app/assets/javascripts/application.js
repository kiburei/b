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
//= require Chart.bundle
//= require chartkick

function list() {
  document.getElementById('list').style.display = 'block';
}

function dashboard() {
  document.getElementById('dashboard').style.display = 'block'
  document.getElementById('motor').style.display = 'none'
  document.getElementById('lifez').style.display = 'none'
  document.getElementById('general').style.display = 'none'
  document.getElementById('health').style.display = 'none'
  document.getElementById('education').style.display = 'none'
}

function motor() {
  document.getElementById('motor').style.display = 'block'
  document.getElementById('life').style.display = 'none'
  document.getElementById('general').style.display = 'none'
  document.getElementById('health').style.display = 'none'
  document.getElementById('dashboard').style.display = 'none'
  document.getElementById('education').style.display = 'none'
}

function health() {
  document.getElementById('health').style.display = 'block'
  document.getElementById('motor').style.display = 'none'
  document.getElementById('general').style.display = 'none'
  document.getElementById('life').style.display = 'none'
  document.getElementById('dashboard').style.display = 'none'
  document.getElementById('education').style.display = 'none'
}

function general() {
  document.getElementById('general').style.display = 'block'
  document.getElementById('health').style.display = 'none'
  document.getElementById('motor').style.display = 'none'
  document.getElementById('life').style.display = 'none'
  document.getElementById('dashboard').style.display = 'none'
  document.getElementById('education').style.display = 'none'
}

function life() {
  document.getElementById('life').style.display = 'block'
  document.getElementById('general').style.display = 'none'
  document.getElementById('health').style.display = 'none'
  document.getElementById('motor').style.display = 'none'
  document.getElementById('dashboard').style.display = 'none'
  document.getElementById('education').style.display = 'none'
}

function education() {
  document.getElementById('education').style.display = 'block'
  document.getElementById('life').style.display = 'none'
  document.getElementById('general').style.display = 'none'
  document.getElementById('health').style.display = 'none'
  document.getElementById('motor').style.display = 'none'
  document.getElementById('dashboard').style.display = 'none'
}

function email() {
                var data = {
                  service_id: 'gmail',
                  template_id: 'template_0BA8c1cI',
                  user_id: 'user_c5t23MJmqmZzBvqzU01b1',
                  // pass parameters from excel file
                  template_params: {
                      'from_name': 'Covernet',
                      'to_name': 'Hezron Muriuki',
                      'mail_to': 'hezron@nouveta.tech',
                      'message_html': 'Hi, the is a request to pay or renew your premium with us. Click link below to if you wish to pay now "http://40.85.224.168/spc_beta/?client_name=Hezron%20OMuriuki&client_address=No%20Address&client_phone=0728592629&client_email=hezron@nouveta.tech&merchant_api_key=a94a8fe5ccb19ba61c4c0873d391e987982fbbd3&service_bill_no=3&service_bill_amount=1&service_name=Deacons&service_description=Test&service_call=SPC"',
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
        smsBody: 'Click the link to pay your bill. https://tinyurl.com/ybp262xd',
        //Sign up for an account to get an API Token
        apiToken: 'jvzhpg'
    };

    puretext.send(text, function (err, response) {
      if(err) console.log(err);
      else console.log(response)
    })
}
