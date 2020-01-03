// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery2
//= require bootstrap
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require owl.carousel.min.js
//= require_tree .

function windowScroll() {
    if (window.scrollY >= 60) {
        $('.header').addClass('header--stick');
    } else {
        $('.header').removeClass('header--stick');
    }
}
$(document).on('turbolinks:load', () => {
    window.addEventListener('scroll', windowScroll);

    // 初始化首页carousel
    if ($('.page.home').length > 0) {
      const customer = $('.customer');
      if (!customer.attr('init')) {
        customer.owlCarousel({
          items: 1,
          loop: true,
          nav: false,
          dots: true,
        });
        customer.attr('init', 'true')
      }
    }
});
document.addEventListener('turbolinks:load', () => {
    $(document).on('submit', '.needValid', e => {
        const { target } = e;
        if (target.checkValidity() === false) {
            e.preventDefault();
            e.stopPropagation();
        }
        target.classList.add('was-validated');
    });
}, { once: true });

$(document).on('turbolinks:before-render', () => {
    window.removeEventListener('scroll', windowScroll);
});
