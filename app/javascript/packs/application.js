// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require("bootstrap")
require("flatpickr")
import Swal from 'sweetalert2';

window.Swal = Swal;


$(document).ready(function() {

  // function to get trucks with category params
  $('.button-box a').on('click', function(e){
    e.preventDefault();
    // decalre varaibles
    var selector = 'ul li.button-box a';
    var category = $(this).data('category');

    // remove and add classes
    $(selector).removeClass('btn-primary');
    $(selector).addClass('btn-outline-primary');
    $(this).addClass('btn-primary');
    $(this).removeClass('btn-outline-primary');

    // set category variable
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


  $('.book-button-available').on('click', function(){
    var id = $(this).data('truck-id');
    Swal.fire({
      title: 'Confirmation de la réservation',
      showCancelButton: true,
      confirmButtonColor: '#1919ff',
      confirmButtonText: 'Je réserve !',
      cancelButtonText: 'Annuler'
    }).then((result) => {
      if (result.isConfirmed) {
        $.ajax({
          type: 'GET',
          url: '/messages/new',
          data: {
            'id': id
          },
          datatype: 'json',
          success: function() {
            Swal.fire(
              'Mail envoyé',
              'Un mail a été envoyé pour la réservation, vous devriez recevoir une confirmation sous 24h',
              'success'
            )
          }
        });
      }
    })
  });

  // set datepicker
  $(".datepicker").flatpickr();

});
