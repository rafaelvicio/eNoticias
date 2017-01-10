/**
  * @package Alchemists HTML
  *
  * Template Scripts
  * Created by Dan Fisher
*/

;(function($){
  "use strict";

  $('body').jpreLoader({
    showSplash: false,
    loaderVPos: "50%",
  });

  $.fn.exists = function () {
    return this.length > 0;
  };

  /* ----------------------------------------------------------- */
  /*  Predefined Variables
  /* ----------------------------------------------------------- */
  var $template_var = $('body').attr('class'),
      $color_primary = '#ffdc11',
      $main_nav     = $('.main-nav'),
      $circular_bar = $('.circular__bar'),
      $gmap         = $('.gm-map'),
      $mp_single    = $('.mp_single-img'),
      $mp_gallery   = $('.mp_gallery'),
      $mp_iframe    = $('.mp_iframe'),
      $post_fitRows = $('.post-grid--fitRows'),
      $post_masonry = $('.post-grid--masonry'),
      $team_album   = $('.album'),
      $slick_featured_slider   = $('.posts--slider-featured'),
      $slick_featured_carousel = $('.featured-carousel'),
      $slick_video_carousel = $('.video-carousel'),
      $slick_team_roster = $('.team-roster--slider'),
      $slick_awards = $('.awards--slider'),
      $slick_player_info = $('.player-info'),
      $slick_product = $('.product__slider'),
      $slick_product_soccer = $('.product__slider-soccer'),
      $slick_team_roster_card = $('.team-roster--card-slider'),
      $slick_hero_slider = $('.hero-slider'),
      $chart_games_history = $('#games-history'),
      $chart_games_history_soccer = $('#games-history-soccer'),
      $chart_points_history = $('#points-history'),
      $chart_points_history_soccer = $('#points-history-soccer'),
      $chart_player_stats = $('#player-stats'),
      $content_filter = $('.content-filter'),
      $range_slider = $('#slider-range');

  if ( $template_var == 'template-soccer' ) {
    $color_primary = '#1892ed';
  }

  var Core = {

    initialize: function() {

      this.SvgPolyfill();

      this.headerNav();

      this.countDown();

      this.circularBar();

      this.MagnificPopup();

      this.isotope();

      this.SlickCarousel();

      this.ContentFilter();

      this.ChartJs();

      this.RangeSlider();

      this.miscScripts();

    },

    SvgPolyfill: function() {
      svg4everybody();
    },

    headerNav: function() {

      if ( $main_nav.exists() ) {

        var $top_nav     = $('.nav-account'),
            $top_nav_li  = $('.nav-account > li'),
            $social      = $('.social-links--main-nav'),
            $info_nav_li = $('.info-block--header > li'),
            $wrapper     = $('.site-wrapper'),
            $nav_list    = $('.main-nav__list'),
            $nav_list_li = $('.main-nav__list > li'),
            $toggle_btn  = $('#header-mobile__toggle'),
            $pushy_btn   = $('.pushy-panel__toggle');

        // Clone Search Form
        var $header_search_form = $('.header-search-form').clone();
        $('#header-mobile').append($header_search_form);

        // Clone Shopping Cart to Mobile Menu
        var $shop_cart = $('.info-block__item--shopping-cart > .info-block__link-wrapper').clone();
        $shop_cart.appendTo($nav_list).wrap('<li class="main-nav__item--shopping-cart"></li>');

        // Clone Top Bar menu to Main Menu
        if ( $top_nav.exists() ) {
          var children = $top_nav.children().clone();
          $nav_list.append(children);
        }

        // Clone Header Logo to Mobile Menu
        var $logo_mobile = $('.header-mobile__logo').clone();
        $nav_list.prepend($logo_mobile);
        $logo_mobile.prepend('<span class="main-nav__back"></span>');

        // Clone Header Info to Mobile Menu
        var header_info1 = $('.info-block__item--contact-primary').clone();
        var header_info2 = $('.info-block__item--contact-secondary').clone();
        $nav_list.append(header_info1).append(header_info2);

        // Clone Social Links to Main Menu
        if ( $social.exists() ) {
          var social_li = $social.children().clone();
          var social_li_new = social_li.contents().unwrap();
          social_li_new.appendTo($nav_list).wrapAll('<li class="main-nav__item--social-links"></li>');
        }

        // Add arrow and class if Top Bar menu ite has submenu
        $top_nav_li.has('ul').addClass('has-children');

        // Add arrow and class if Info Header Nav has submenu
        $info_nav_li.has('ul').addClass('has-children');

        // Mobile Menu Toggle
        $toggle_btn.on('click', function(){
          $wrapper.toggleClass('site-wrapper--has-overlay');
        });

      	$('.site-overlay, .main-nav__back').on('click', function(){
          $wrapper.toggleClass('site-wrapper--has-overlay');
        });

        // Pushy Panel Toggle
        $pushy_btn.on('click', function(e){
          e.preventDefault();
          $wrapper.toggleClass('site-wrapper--has-overlay-pushy');
        });

        $('.site-overlay, .pushy-panel__back-btn').on('click', function(e){
          e.preventDefault();
          $wrapper.removeClass('site-wrapper--has-overlay-pushy site-wrapper--has-overlay');
        });

      	// Add toggle button and class if menu has submenu
      	$nav_list_li.has('.main-nav__sub').addClass('has-children').prepend('<span class="main-nav__toggle"></span>');
      	$nav_list_li.has('.main-nav__megamenu').addClass('has-children').prepend('<span class="main-nav__toggle"></span>');

        $('.main-nav__toggle').on('click', function(){
          $(this).toggleClass('main-nav__toggle--rotate')
      		.parent().siblings().children().removeClass('main-nav__toggle--rotate');

      		$(".main-nav__sub, .main-nav__megamenu").not($(this).siblings('.main-nav__sub, .main-nav__megamenu')).slideUp('normal');
      		$(this).siblings('.main-nav__sub').slideToggle('normal');
      		$(this).siblings('.main-nav__megamenu').slideToggle('normal');
        });

      	// Add toggle button and class if submenu has sub-submenu
      	$('.main-nav__list > li > ul > li').has('.main-nav__sub-2').addClass('has-children').prepend('<span class="main-nav__toggle-2"></span>');
      	$('.main-nav__list > li > ul > li > ul > li').has('.main-nav__sub-3').addClass('has-children').prepend('<span class="main-nav__toggle-2"></span>');

      	$('.main-nav__toggle-2').on('click', function(){
      		$(this).toggleClass('main-nav__toggle--rotate');
      		$(this).siblings('.main-nav__sub-2').slideToggle('normal');
      		$(this).siblings('.main-nav__sub-3').slideToggle('normal');
      	});

        // Mobile Search
        $('#header-mobile__search-icon').on('click', function(){
          $(this).toggleClass('header-mobile__search-icon--close');
          $('.header-mobile').toggleClass('header-mobile--expanded');
        });
      }
    },

    countDown: function() {

      var countdown = $('.countdown-counter');
      var count_time = countdown.data('date');
      countdown.countdown({
        date: count_time,
        render: function(data) {
          $(this.el).html("<div class='countdown-counter__item countdown-counter__item--days'>" + this.leadingZeros(data.days, 2) + " <span class='countdown-counter__label'>days</span></div><div class='countdown-counter__item countdown-counter__item--hours'>" + this.leadingZeros(data.hours, 2) + " <span class='countdown-counter__label'>hours</span></div><div class='countdown-counter__item countdown-counter__item--mins'>" + this.leadingZeros(data.min, 2) + " <span class='countdown-counter__label'>mins</span></div><div class='countdown-counter__item countdown-counter__item--secs'>" + this.leadingZeros(data.sec, 2) + " <span class='countdown-counter__label'>secs</span></div>");
        }
      });
    },

    circularBar: function() {

      if ( $circular_bar.exists() ) {
        $circular_bar.easyPieChart({
          barColor: $color_primary,
          trackColor: '#ecf0f6',
          lineCap: 'square',
          lineWidth: 8,
          size: 90,
          scaleLength: 0
        });
      }

    },

    MagnificPopup: function(){

      if ($mp_single.exists() ) {
        // Single Image
        $('.mp_single-img').magnificPopup({
          type:'image',
          removalDelay: 300,

          gallery:{
            enabled:false
          },
          mainClass: 'mfp-fade',
          autoFocusLast: false,

        });
      };

      if ($mp_gallery.exists() ) {
        // Multiple Images (gallery)
        $('.mp_gallery').magnificPopup({
          type:'image',
          removalDelay: 300,

          gallery:{
            enabled:true
          },
          mainClass: 'mfp-fade',
          autoFocusLast: false,

        });
      };

      if ($mp_iframe.exists() ) {
        // Iframe (video, maps)
        $('.mp_iframe').magnificPopup({
          type:'iframe',
          removalDelay: 300,
          mainClass: 'mfp-fade',
          autoFocusLast: false,

          patterns: {
            youtube: {
              index: 'youtube.com/', // String that detects type of video (in this case YouTube). Simply via url.indexOf(index).

              id: 'v=', // String that splits URL in a two parts, second part should be %id%
              // Or null - full URL will be returned
              // Or a function that should return %id%, for example:
              // id: function(url) { return 'parsed id'; }

              src: '//www.youtube.com/embed/%id%?autoplay=1' // URL that will be set as a source for iframe.
            },
            vimeo: {
              index: 'vimeo.com/',
              id: '/',
              src: '//player.vimeo.com/video/%id%?autoplay=1'
            },
            gmaps: {
              index: '//maps.google.',
              src: '%id%&output=embed'
            }
          },

          srcAction: 'iframe_src', // Templating object key. First part defines CSS selector, second attribute. "iframe_src" means: find "iframe" and set attribute "src".

        });
      };
    },


    isotope: function() {

      if ( $post_fitRows.exists() ) {
        var $grid = $post_fitRows.imagesLoaded( function() {
          // init Isotope after all images have loaded
          $grid.isotope({
            itemSelector: '.post-grid__item',
            layoutMode: 'fitRows'
          });
        });
      }

      if ( $post_masonry.exists() ) {
        var $masonry = $post_masonry.imagesLoaded( function() {
          // init Isotope after all images have loaded
          $masonry.isotope({
            itemSelector: '.post-grid__item',
            layoutMode: 'masonry',
            percentPosition: true,
            masonry: {
              columnWidth: '.post-grid__item'
            }
          });
        });
      }

      if ( $team_album.exists() ) {
        var $masonry = $team_album.imagesLoaded( function() {
          // init Isotope after all images have loaded
          $masonry.isotope({
            itemSelector: '.album__item',
            layoutMode: 'masonry',
            percentPosition: true,
            masonry: {
              columnWidth: '.album__item'
            }
          });
        });
      }

    },


    SlickCarousel: function() {

      // Featured News Carousel
      if ( $slick_featured_carousel.exists() ) {

        $slick_featured_carousel.slick({
          slidesToShow: 3,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 5000,
          centerMode: true,
          centerPadding: 0,

          responsive: [
            {
              breakpoint: 992,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: 0,
                slidesToShow: 3
              }
            },
            {
              breakpoint: 768,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: 0,
                slidesToShow: 2
              }
            },
            {
              breakpoint: 480,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: 0,
                slidesToShow: 1,
                dots: true
              }
            }
          ]
        });

      };

      // Video Slideshow Carousel
      if ( $slick_video_carousel.exists() ) {

        $slick_video_carousel.slick({
          slidesToShow: 4,
          slidesToScroll: 1,
          infinite: true,
          autoplay: false,
          autoplaySpeed: 5000,

          responsive: [
            {
              breakpoint: 992,
              settings: {
                arrows: false,
                slidesToShow: 3,
                infinite: true
              }
            },
            {
              breakpoint: 768,
              settings: {
                arrows: false,
                slidesToShow: 2,
                infinite: false
              }
            },
            {
              breakpoint: 480,
              settings: {
                arrows: false,
                slidesToShow: 1,
                infinite: false
              }
            }
          ]
        });

        // Filter by Categories
        var filtered = false;

        $('.category-filter--carousel .category-filter__link').on('click', function(e){
          var category = $(this).data('category');
          $slick_video_carousel.slick('slickUnfilter');
          $slick_video_carousel.slick('slickFilter', '.' + category);
          $('.category-filter--carousel .category-filter__link--active').removeClass('category-filter__link--active');
          $(this).addClass('category-filter__link--active');
          e.preventDefault();
        });

        // Reset Filter (Show All posts)
        $('.category-filter--carousel .category-filter__link--reset').on('click', function(e){
          $slick_video_carousel.slick('slickUnfilter');
          $('.category-filter--carousel .category-filter__link').removeClass('category-filter__link--active');
          $(this).addClass('category-filter__link--active');
          filtered = false;
          e.preventDefault();
        });

      };

      // Featured News Slider
      if ( $slick_featured_slider.exists() ) {

        $slick_featured_slider.slick({
          slidesToShow: 1,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 5000,
          responsive: [
            {
              breakpoint: 768,
              settings: {
                arrows: false
              }
            }
          ]
        });


        // Featured Posts (.posts--slider-featured)

        // Filter by Categories
        var filtered = false;

        $('.category-filter--featured .category-filter__link').on('click', function(e){
          var category = $(this).data('category');
          $slick_featured_slider.slick('slickUnfilter');
          $slick_featured_slider.slick('slickFilter', '.' + category);
          $('.category-filter--featured .category-filter__link--active').removeClass('category-filter__link--active');
          $(this).addClass('category-filter__link--active');
          e.preventDefault();
        });

        // Reset Filter (Show All posts)
        $('.category-filter--featured .category-filter__link--reset').on('click', function(e){
          $slick_featured_slider.slick('slickUnfilter');
          $('.category-filter--featured .category-filter__link').removeClass('category-filter__link--active');
          $(this).addClass('category-filter__link--active');
          filtered = false;
          e.preventDefault();
        });
      };


      // Team Roster Carousel
      if ( $slick_team_roster.exists() ) {

        $slick_team_roster.slick({
          centerMode: true,
          centerPadding: 0,
          slidesToShow: 3,
          autoplay: true,
          autoplaySpeed: 3000,
          responsive: [
            {
              breakpoint: 768,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: 0,
                slidesToShow: 3
              }
            },
            {
              breakpoint: 480,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: 0,
                slidesToShow: 1
              }
            }
          ]
        });
      };


      // Awards Carousel
      if ( $slick_awards.exists() ) {

        $slick_awards.slick({
          slidesToShow: 1,
          arrows: true,
          dots: true,
          responsive: [
            {
              breakpoint: 768,
              settings: {
                arrows: false
              }
            }
          ]
        });
      };


      // Player Info
      if ( $slick_player_info.exists() ) {

        $(window).on('load', function() {
          $slick_player_info.slick({
            slidesToShow: 3,
            arrows: false,
            dots: false,
            infinite: false,
            variableWidth: true,
            responsive: [
              {
                breakpoint: 992,
                settings: {
                  slidesToShow: 1,
                  dots: true,
                  variableWidth: false
                }
              }
            ]
          });
        });
      };


      // Products Slider
      if ( $slick_product.exists() ) {

        $slick_product.slick({
          slidesToShow: 1,
          arrows: false,
          dots: true,
        });
      };


      // Products Slider - Thumbs
      if ( $slick_product_soccer.exists() ) {

        $slick_product_soccer.slick({
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          asNavFor: '.product__slider-thumbs'
        });
        $('.product__slider-thumbs').slick({
          slidesToShow: 3,
          slidesToScroll: 1,
          asNavFor: $slick_product_soccer,
          focusOnSelect: true,
          vertical: true,
        });
      };


      // Team Roster - Card Slider
      if ( $slick_team_roster_card.exists() ) {

        $slick_team_roster_card.slick({
          slidesToShow: 1,
          arrows: true,
          dots: false,
          responsive: [
            {
              breakpoint: 992,
              settings: {
                arrows: false,
              }
            }
          ]
        });
      };


      // Hero Slider
      if ( $slick_hero_slider.exists() ) {

        $slick_hero_slider.slick({
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          fade: true,
          autoplay: true,
          autoplaySpeed: 8000,
          asNavFor: '.hero-slider-thumbs',

          responsive: [
            {
              breakpoint: 992,
              settings: {
                fade: false,
              }
            }
          ]
        });
        $('.hero-slider-thumbs').slick({
          slidesToShow: 3,
          slidesToScroll: 1,
          asNavFor: $slick_hero_slider,
          focusOnSelect: true,
        });
      };

    },


    ContentFilter: function() {

      if ( $content_filter.exists() ) {
        $('.content-filter__toggle').on('click', function(e){
          e.preventDefault();
          $(this).toggleClass('content-filter__toggle--active');
          $('.content-filter__list').toggleClass('content-filter__list--expanded');
        });
      }

    },


    ChartJs: function() {

      if ( $chart_games_history.exists() ) {
        var data = {
          type: 'bar',
          data: {
            labels: ["2010", "2011", "2012", "2013", "2014", "2015"],
            datasets: [{
              label: 'WON',
              data: [70, 67, 78, 87, 69, 76],
              backgroundColor: "#ffdc11",
            }, {
              label: 'LOST',
              data: [40, 45, 36, 28, 43, 35],
              backgroundColor: "#ff8429"
            }]
          },
          options: {
            legend: {
              display: false,
              labels: {
                boxWidth: 8,
                fontSize: 9,
                fontColor: '#31404b',
                fontFamily: 'Montserrat, sans-serif',
                padding: 20,
              }
            },
            tooltips: {
              backgroundColor: "rgba(49,64,75,0.8)",
              titleFontSize: 0,
              titleSpacing: 0,
              titleMarginBottom: 0,
              bodyFontFamily: 'Montserrat, sans-serif',
              bodyFontSize: 9,
              bodySpacing: 0,
              cornerRadius: 2,
              xPadding: 10,
              displayColors: false,
            },
            scales: {
              xAxes: [{
                barThickness: 14,
                gridLines: {
                  display:false,
                  color: "rgba(255,255,255,0)",
                },
                ticks: {
                  fontColor: '#9a9da2',
                  fontFamily: 'Montserrat, sans-serif',
                  fontSize: 10,
                },
              }],
              yAxes: [{
                gridLines: {
                  display:false,
                  color: "rgba(255,255,255,0)",
                },
                ticks: {
                  beginAtZero: true,
                  fontColor: '#9a9da2',
                  fontFamily: 'Montserrat, sans-serif',
                  fontSize: 10,
                  padding: 20
                }
              }]
            }
          },
        };

        var ctx = $chart_games_history;
        var gamesHistory = new Chart(ctx, data);
        document.getElementById('gamesHistoryLegend').innerHTML = gamesHistory.generateLegend();
      }



      if ( $chart_games_history_soccer.exists() ) {
        var data = {
          type: 'bar',
          data: {
            labels: ["2010", "2011", "2012", "2013", "2014", "2015"],
            datasets: [{
              label: 'WON',
              data: [40, 45, 36, 28, 42, 35],
              backgroundColor: "#c2ff1f",
            }, {
              label: 'LOST',
              data: [70, 67, 75, 86, 68, 76],
              backgroundColor: "#38a9ff",
            }]
          },
          options: {
            legend: {
              display: false,
              labels: {
                boxWidth: 8,
                fontSize: 9,
                fontColor: '#31404b',
                fontFamily: 'Montserrat, sans-serif',
                padding: 20,
              }
            },
            tooltips: {
              backgroundColor: "rgba(49,64,75,0.8)",
              titleFontSize: 0,
              titleSpacing: 0,
              titleMarginBottom: 0,
              bodyFontFamily: 'Montserrat, sans-serif',
              bodyFontSize: 9,
              bodySpacing: 0,
              cornerRadius: 2,
              xPadding: 10,
              displayColors: false,
            },
            scales: {
              xAxes: [{
                stacked: true,
                barThickness: 34,
                gridLines: {
                  display:false,
                  color: "rgba(255,255,255,0)",
                },
                ticks: {
                  fontColor: '#9a9da2',
                  fontFamily: 'Montserrat, sans-serif',
                  fontSize: 10,
                },
              }],
              yAxes: [{
                stacked: true,
                gridLines: {
                  display:false,
                  color: "rgba(255,255,255,0)",
                },
                ticks: {
                  fontColor: '#9a9da2',
                  fontFamily: 'Montserrat, sans-serif',
                  fontSize: 10,
                  padding: 20,
                }
              }]
            }
          },
        };

        var ctx = $chart_games_history_soccer;
        var gamesHistory = new Chart(ctx, data);
        document.getElementById('gamesHistoryLegendSoccer').innerHTML = gamesHistory.generateLegend();
      }



      if ( $chart_points_history.exists() ) {
        var data = {
          type: 'line',
          data: {
            labels: ["Aug 8", "Aug 15", "Aug 21", "Aug 28", "Sep 4", "Sep 19", "Sep 26", "Oct 3", "Oct 10", "Oct 16", "Oct 23", "Oct 30"],
            datasets: [{
              label: 'POINTS',
              fill: false,
              lineTension: 0,
              backgroundColor: "#ffdc11",
              borderWidth: 2,
              borderColor: "#ffdc11",
              borderCapStyle: 'butt',
              borderDashOffset: 0.0,
              borderJoinStyle: 'bevel',
              pointRadius: 0,
              pointBorderWidth: 0,
              pointHoverRadius: 5,
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "#ffcc00",
              pointHoverBorderWidth: 5,
              pointHitRadius: 10,
              data: [104, 70, 115, 105, 45, 94, 84, 100, 82, 125, 78, 86, 110],
              spanGaps: false,
            }]
          },
          options: {
            legend: {
              display: false,
              labels: {
                boxWidth: 8,
                fontSize: 9,
                fontColor: '#31404b',
                fontFamily: 'Montserrat, sans-serif',
                padding: 20,
              }
            },
            tooltips: {
              backgroundColor: "rgba(49,64,75,0.8)",
              titleFontSize: 0,
              titleSpacing: 0,
              titleMarginBottom: 0,
              bodyFontFamily: 'Montserrat, sans-serif',
              bodyFontSize: 9,
              bodySpacing: 0,
              cornerRadius: 2,
              xPadding: 10,
              displayColors: false,
            },
            scales: {
              xAxes: [{
                gridLines: {
                  color: "#e4e7ed",
                },
                ticks: {
                  fontColor: '#9a9da2',
                  fontFamily: 'Montserrat, sans-serif',
                  fontSize: 10,
                },
              }],
              yAxes: [{
                gridLines: {
                  display:false,
                  color: "rgba(255,255,255,0)",
                },
                ticks: {
                  beginAtZero: true,
                  fontColor: '#9a9da2',
                  fontFamily: 'Montserrat, sans-serif',
                  fontSize: 10,
                  padding: 20
                }
              }]
            }
          },
        };

        var ctx = $chart_points_history;
        var gamesHistory = new Chart(ctx, data);
      }


      if ( $chart_points_history_soccer.exists() ) {
        var data = {
          type: 'line',
          data: {
            labels: ["Aug 8", "Aug 15", "Aug 21", "Aug 28", "Sep 4", "Sep 19", "Sep 26", "Oct 3", "Oct 10", "Oct 16", "Oct 23", "Oct 30"],
            datasets: [{
              label: 'PREV RECORD',
              fill: true,
              lineTension: 0.5,
              backgroundColor: "rgba(194,255,31,0.8)",
              borderWidth: 2,
              borderColor: "#c2ff1f",
              borderCapStyle: 'butt',
              borderDashOffset: 0.0,
              borderJoinStyle: 'bevel',
              pointRadius: 0,
              pointBorderWidth: 0,
              pointHoverRadius: 5,
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "#c2ff1f",
              pointHoverBorderWidth: 5,
              pointHitRadius: 10,
              data: [52, 71, 40, 53, 62, 40, 44, 58, 38, 64, 46, 70, 75],
              spanGaps: false,
            }, {
              label: 'THIS YEAR',
              fill: true,
              lineTension: 0.5,
              backgroundColor: "rgba(56,169,255,0.8)",
              borderWidth: 2,
              borderColor: "#38a9ff",
              borderCapStyle: 'butt',
              borderDashOffset: 0.0,
              borderJoinStyle: 'bevel',
              pointRadius: 0,
              pointBorderWidth: 0,
              pointHoverRadius: 5,
              pointHoverBackgroundColor: "#fff",
              pointHoverBorderColor: "#38a9ff",
              pointHoverBorderWidth: 5,
              pointHitRadius: 10,
              data: [71, 52, 87, 53, 17, 62, 56, 37, 91, 48, 75, 64, 78],
              spanGaps: false,
            }]
          },
          options: {
            legend: {
              display: false,
              labels: {
                boxWidth: 8,
                fontSize: 9,
                fontColor: '#31404b',
                fontFamily: 'Montserrat, sans-serif',
                padding: 20,
              }
            },
            tooltips: {
              backgroundColor: "rgba(49,64,75,0.8)",
              titleFontSize: 0,
              titleSpacing: 0,
              titleMarginBottom: 0,
              bodyFontFamily: 'Montserrat, sans-serif',
              bodyFontSize: 9,
              bodySpacing: 0,
              cornerRadius: 2,
              xPadding: 10,
              displayColors: false,
            },
            scales: {
              xAxes: [{
                gridLines: {
                  color: "#e4e7ed",
                },
                ticks: {
                  fontColor: '#9a9da2',
                  fontFamily: 'Montserrat, sans-serif',
                  fontSize: 10,
                },
              }],
              yAxes: [{
                gridLines: {
                  display:false,
                  color: "rgba(255,255,255,0)",
                },
                ticks: {
                  beginAtZero: true,
                  fontColor: '#9a9da2',
                  fontFamily: 'Montserrat, sans-serif',
                  fontSize: 10,
                  padding: 20
                }
              }]
            }
          },
        };

        var ctx = $chart_points_history_soccer;
        var gamesHistory = new Chart(ctx, data);

        document.getElementById('gamesPoinstsLegendSoccer').innerHTML = gamesHistory.generateLegend();
      }


      if ( $chart_player_stats.exists() ) {
        var radar_data = {
          type: 'radar',
          data: {
            labels: ["OFF", "AST", "3PT", "2PT", "DEF"],
            datasets: [{
              data: [72, 25, 40, 72, 50],
              backgroundColor: "rgba(255,220,17,0.8)",
              borderColor: "#ffdc11",
              pointBorderColor: "rgba(255,255,255,0)",
              pointBackgroundColor: "rgba(255,255,255,0)",
              pointBorderWidth: 0
            }]
          },
          options: {
            legend: {
              display: false,
            },
            tooltips: {
              backgroundColor: "rgba(49,64,75,0.8)",
              titleFontSize: 10,
              titleSpacing: 2,
              titleMarginBottom: 4,
              bodyFontFamily: 'Montserrat, sans-serif',
              bodyFontSize: 9,
              bodySpacing: 0,
              cornerRadius: 2,
              xPadding: 10,
              displayColors: false,
            },
            scale: {
              angleLines: {
                color: "rgba(255,255,255,0.025)",
              },
              pointLabels: {
                fontColor: "#9a9da2",
                fontFamily: 'Montserrat, sans-serif',
              },
              ticks: {
                beginAtZero: true,
                display: false,
              },
              gridLines: {
                color: "rgba(255,255,255,0.05)",
                lineWidth: 2,
              },
              labels: {
                display: false
              }
            }
          },
        };

        var ctx = $chart_player_stats;
        var playerInfo = new Chart(ctx, radar_data);
      }

    },

    RangeSlider: function(){

      if ( $range_slider.exists() ) {

        var rangeSlider = document.getElementById('slider-range');

        noUiSlider.create(rangeSlider, {
        	start: [ 0, 350 ],
          connect: true,
        	range: {
        		'min': [ 0 ],
        		'max': [ 450 ]
        	}
        });

        var snapValues = [
        	document.getElementById('slider-range-value-min'),
        	document.getElementById('slider-range-value-max')
        ];

        rangeSlider.noUiSlider.on('update', function( values, handle ) {
        	snapValues[handle].innerHTML = values[handle];
        });
      }

    },


    miscScripts: function() {
      // Tooltips
      $('[data-toggle="tooltip"]').tooltip();

      [].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {
        new SelectFx(el);
      } );
    },

  };

  $(document).on('ready', function() {
    Core.initialize();
  });

})(jQuery);




