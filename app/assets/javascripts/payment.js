// var handler = StripeCheckout.configure({
//   key: 'pk_test_EgTymR8BlCmbJvEpxcxOp0On',
//   image: 'https://stripe.com/img/documentation/checkout/marketplace.png',
//   locale: 'auto',
//   token: function(token) {
//     // You can access the token ID with `token.id`.
//     // Get the token ID to your server-side code for use.
//   }
// });

jQuery(function($) {
  $('#payment-form').submit(function(event) {
    var $form = $(this);

    $form.find('button').prop('disabled', true);

    Stripe.createToken($form, stripeResponseHandler);

    return false;
  });
});

var stripeResponseHandler = function(status, response) {
  var $form = $('#payment-form');

  if (response.error) {
    $form.find('.payment-errors').text(response.error.message);
    $form.find('button').prop('disabled', false);
  } else {
    var token = response.id;
    $form.append($('<input type="hidden" name="stripeToken" />').val(token));
    $form.get(0).submit();
  }
};

// const stripe = Stripe('pk_test_EgTymR8BlCmbJvEpxcxOp0On');
// const myForm = document.querySelector('#payment-form');
// myForm.addEventListener('submit', handleForm);

// async function handleForm(event) {
//   event.preventDefault();

//   const result = await stripe.createToken('account', {
//     legal_entity: {
//       first_name: document.querySelector('.inp-first-name').value,
//       last_name: document.querySelector('.inp-last-name').value,
//       address: {
//         line1: document.querySelector('.inp-street-address1').value,
//         city: document.querySelector('.inp-city').value,
//         state: document.querySelector('.inp-state').value,
//         postal_code: document.querySelector('.inp-zip').value,
//       },
//     },
//     tos_shown_and_accepted: true,
//   });

//   if (result.token) {
//     document.querySelector('#token').value = result.token.id;
//     myForm.submit();
//   }
// }