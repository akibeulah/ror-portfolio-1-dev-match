//= require jquery
//= require jquery_ujs
//= require action_cable
//= require_self
//= require_tree ./channels
//= require commontator/application

import './bootstrap_custom.js'
import "bootstrap"
import "../stylesheets/application.scss"

window.addEventListener("load", function () {
  let o = document.querySelectorAll('.chat-track')
  for (let i = 0; i < o; i++) {
    o[i].addEventListener('click', function () {
      console.log(1);
    });
  }
});

$(document).ready(function () {
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));

  // Listen for form submissions
  $("#form-submit-btn").click(function (event) {
    event.preventDefault();
    $('input[type=submit]').prop('disabled', true);
    var error = false;
    var ccNum = $('#card_number').val(),
      cvcNum = $('#card_code').val(),
      expMonth = $('#card_month').val(),
      expYear = $('#card_year').val();
    ccNum.replace(/\s/g, '');
    console.log(ccNum);
    if (!error) {
      // Retrieve Stripe Token
      Stripe.createToken({
        number: ccNum,
        cvc: cvcNum,
        expMonth: expMonth,
        expYear: expYear
      }, stripeResponseHandler);
    }
    return false;
  }); //Form submission

  function stripeResponseHandler(status, response) {
    // Get form reference
    var f = $("#new_user");
    // Retrieve token from response
    var token = response.id;

    // Add the token to form
    f.append('<input type="hidden" name="user[stripe_card_token]" value="' + token + '"/>');

    // Submit form
    f.get(0).submit();
  }
});

$(document).ready(function () {
  document.getElementById('card_number').addEventListener('input', function (e) {
    e.target.value = e.target.value.replace(/[^\dA-Z]/g, '').replace(/(.{4})/g, '$1 ').trim();
  });
});

$(function () {
  const modal_holder_selector = '#modal-holder';
  const modal_selector = '.modal';

  $(document).on('click', 'a[data-modal]', function () {
    const location = $(this).attr('href');
    // Load modal dialog from server
    $.get(
      location,
      data => { $(modal_holder_selector).html(data).find(modal_selector).modal() }
    );
    return false;
  });

  $(document).on('ajax:success', 'form[data-modal]', function (event) {
    const [data, _status, xhr] = event.detail;
    const url = xhr.getResponseHeader('Location');
    if (url) {
      // Redirect to url
      window.location = url;
    } else {
      // Remove old modal backdrop
      $('.modal-backdrop').remove();
      // Update modal content
      const modal = $(data).find('body').html();
      $(modal_holder_selector).html(modal).find(modal_selector).modal();
    }

    return false;
  });
});


$('#conversations').replaceWith('<%= j render @conversations %>');