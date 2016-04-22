// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require jquery.magnific-popup.min
//= require owl.carousel.min
//= require moment.min
//= require jquery.simpleWeather.min
//= require jquery.sticky-kit.min
//= require jquery.easy-ticker.min
//= require jquery.subscribe-better.min
//= require main
//= require switcher
//= require masonry/jquery.masonry
//= require react
//= require react_ujs
//= require components
//= require ajaxify_rails
//= require jquery.infinite-pages




window.onload = function() {
    $('#masonry-container').masonry({
        itemSelector: '.vbox',
        isAnimated: true,
        isFitWidth: true,
        isRTL: false,
        isResizable: false
    });
}