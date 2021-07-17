var $win = $(window),
    $doc = $(document),
    $html = $('html'),
    $body = $('body');

$doc.ready(function() {
  $body.addClass('is-ready');
});

$win.on('load', function() {
  $body.addClass('is-loaded');

  AOS.init({
    duration: 800,
    offset: 200
  });
});


// Menu

$(function() {
  'use strict';

  var $toggle = $('.js-toggle-menu'),
      $menu   = $('.js-menu');

  $toggle.on('click', function() {
    $body.toggleClass('menu-opened');
  });

});


// Slider

$(function() {
  'use strict';

  $('.js-slider').slick({
    autoplay: true,
    autoplaySpeed: 2000,
    arrows: false,
    dots: false,
    draggable: false,
    fade: true,
    infinite: true,
    pauseOnFocus: false,
    pauseOnHover: false,
    speed: 1000,
    swipe: false
  });

});
