$(".slider").slick({

  infinite: true,
  dots: true,
  arrows: true,
  autoplay: true,
  nextArrow: $('.slider-container').find('.next-btn'),
  prevArrow: $('.slider-container').find('.prev-btn')
});

$(".rartners-slider").slick({
  infinite: true,
  dots: false,
  arrows: false,
  slidesToShow: 6,
  slidesToScroll: 6,
  autoplay: true,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 4,
        slidesToScroll: 4,
      }
    }
  ]
});