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

function sbp() {
  document.getElementById('sbp').style.display = 'block'
  document.getElementById('loadingz').style.display = 'none'
  document.getElementById('advertising').style.display = 'none'
  document.getElementById('landrates').style.display = 'none'
}

function landrates() {
  document.getElementById('landrates').style.display = 'block'
  document.getElementById('sbp').style.display = 'none'
  document.getElementById('advertising').style.display = 'none'
  document.getElementById('loadingz').style.display = 'none'
}

function advertising() {
  document.getElementById('advertising').style.display = 'block'
  document.getElementById('landrates').style.display = 'none'
  document.getElementById('sbp').style.display = 'none'
  document.getElementById('loadingz').style.display = 'none'
}

function loadingz() {
  document.getElementById('loadingz').style.display = 'block'
  document.getElementById('advertising').style.display = 'none'
  document.getElementById('landrates').style.display = 'none'
  document.getElementById('sbp').style.display = 'none'
}
