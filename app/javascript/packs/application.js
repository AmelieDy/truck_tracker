// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

$(document).ready(function() {

  // function to get trucks with category params
  $('.button-box a').on('click', function(e){
    e.preventDefault();
    // select button element
    const selector = 'ul li.button-box a';
    // remove and add classes
    $(selector).removeClass('btn-primary');
    $(selector).addClass('btn-outline-primary');
    $(this).addClass('btn-primary');
    $(this).removeClass('btn-outline-primary');
    // set category variable
    category = $(this).data('category');
    // get trucks in trucks controller index in ajax
    $.ajax({
      type: 'GET',
      url: '/trucks/',
      data: {
        'category': category
      },
      datatype: 'json',
    });
  });
});
