(function( $ ) {
  'use strict';

  //
  // Preloader
  jQuery(window).load(function() {
    jQuery(".preloader").delay(1000).fadeOut("slow");
  });

  $(document).ready(function(){

    $(window).scroll(function() {
      //
      // Scroll Progress Bar
      var documentHeight = $(document).height();
      var windowHeight   = $(window).height();
      var distanceToTop  = $(window).scrollTop();

      var percentScrolled = distanceToTop/(documentHeight - windowHeight) * 100;
      $('#progress').css({'width': percentScrolled + '%'});

      //
      // Sticky Nav
      if ($(this).scrollTop() > 20) {
        $('body').addClass("sticky-nav");
      }
      else {
        $('body').removeClass("sticky-nav");
      }
    });
    $(window).scroll();

    //
    // Smooth Scrolling
    $('a[href*=#]:not([href=#]), a.scroll-top[href*=#]:not([href=#])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html,body').animate({
            scrollTop: target.offset().top - 58
          }, 500);
          return false;
        }
      }
    });

    //
    // ScrollSpy
    $('body').scrollspy({
      target  : '.scrollspy',
      offset  : 62
    });

    // Fitvids
    $(".vid-responsive").fitVids();

    //
    // Slide Background
    $('.intro-section').vegas({
      slides: [
        { src: "assets/images/slide_img01.jpg" },
      ],
      animation: [ 'kenburnsUp', 'kenburnsDown', 'kenburnsLeft', 'kenburnsRight' ]
    });

    //
    // Counter Up
    $('.countup').counterUp({
      delay : 10,
      time  : 1000
    });

    //
    // Skillbar
    $('.skillbar').each(function() {
      $(this).appear(function() {
        $(this).find('.count-bar').animate({
          width:$(this).attr('data-percent')
        },1000);
        var percent = $(this).attr('data-percent');
        $(this).find('.count').html('<span>' + percent + '</span>');
      });
    });

    //
    // Post Gallery
    $('.image-gallery').owlCarousel({
      loop            : true,
      autoplay        : true,
      autoplayTimeout : 7000,
      items           : 1
    });

    //
    // mixItUp
    var portfolioGallery = $("#portfolioGallery");
    portfolioGallery.mixItUp({
      animation: {
        duration: 400,
        effects: 'translateZ(-360px) fade stagger(34ms) translateX(10%)',
        easing: 'cubic-bezier(0.39, 0.575, 0.565, 1)'
      }
    });

    //
    // Image Popup
    portfolioGallery.magnificPopup({
      delegate: 'a',
      type: 'image',
      closeOnContentClick: false,
      closeBtnInside: false,
      mainClass: 'mfp-with-zoom mfp-img-mobile',
      image: {
        verticalFit: true,
        titleSrc: function(item) {
          return item.el.attr('title');
        }
      },
      gallery: {
        enabled: true
      },
      zoom: {
        enabled: true,
        duration: 500, // don't foget to change the duration also in CSS
        opener: function(element) {
          return element.find('img');
        }
      }

    });

    //
    // Post Gallery
    $('.post-gallery').owlCarousel({
      loop            : true,
      autoplay        : true,
      autoplayTimeout : 7000,
      items           : 1,
      nav             : true,
      navText       : ['<i class="ion-ios-arrow-left"><i/>','<i class="ion-ios-arrow-right"><i/>']
    });

    //
    // Clients
    $('.clients').owlCarousel({
      loop            : true,
      autoplay        : true,
      autoplayTimeout : 5000,
      margin          : 30,
      responsiveClass : true,
      responsive:{
        0:{
          items   : 1,
          margin  : 0
        },
        736:{
          items   : 2
        },
        991:{
          items   : 3
        },
        1000:{
          items   : 4
        },
        1200:{
          items   : 5
        }
      }
    });

    //
    // Subscribe (mailchimp)
    var mailSubscribe   = $('.subscribe');

    mailSubscribe.ajaxChimp({
      callback: mailchimpCallback,
      url: "http://frontpixels.us11.list-manage.com/subscribe/post?u=8ed724b6f4db710960cbc2439&amp;id=26648b74c9" // Just paste your mailchimp list url inside the "".
    });
    function mailchimpCallback(resp) {
      var successMessage    = $('.subscribe-success'),
        errorMessage      = $('.subscribe-error'),
        successIcon       = '<i class="ion-ios-checkmark"></i> ',
        errorIcon         = '<i class="ion-ios-close"></i> ';

      if (resp.result === 'success') {
        successMessage.html(successIcon + resp.msg).fadeIn(1000);
        errorMessage.fadeOut(300);

      } else if(resp.result === 'error') {
        errorMessage.html(errorIcon + resp.msg).fadeIn(1000);
      }
    }

    //
    // Contact
    var contact         = $('.contact-form'),
      successMessage    = $('.contact-success'),
      errorMessage      = $('.contact-error');

    contact.validate({
      rules: {
        name: {
          required: true,
          minlength: 2
        },
        email: {
          required: true,
          email: true
        },
        message: {
          required: true
        }
      },
      messages: {
        name: {
          required: "Come on! Enter your name",
          minlength: "your name must consist of at least 2 characters"
        },
        email: {
          required: "no email, no message"
        },
        message: {
          required: "You have to write something to send this form.",
          minlength: "thats all? really?"
        }
      },
      submitHandler: function(form) {
        $(form).ajaxSubmit({
          type:"POST",
          data: $(form).serialize(),
          url:"assets/php/contact.php",
          success: function() {
            successMessage.fadeIn();
          },
          error: function() {
            contact.fadeTo( "slow", 0.15, function() {
              errorMessage.fadeIn();
            });
          }
        });
      }
    });
  });

})(window.jQuery);