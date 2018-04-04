$document.ready ->
  $('.order-popup-btn').on "click", ->
    $('.popup-wrapper').addClass('visible')
    $('body').addClass('opened-popup')
    if $('.product-popup').hasClass('visible')
      $('.product-popup').removeClass('visible')

  $('.close-popup').on 'click', ->
  	$(".popup-wrapper").removeClass('visible')
  	$('body').removeClass('opened-popup')

  

  $('.popup-wrapper .button').on "click", ->
    # $(this).css("color","#00A029")
    $('.success').addClass("visible")
    setTimeout (->
      $('.success').removeClass("visible")
    ), 13000
    setTimeout (->
      $('.popup-wrapper .button').css("color","white")
    ), 13800


$(document).on 'click', '.popup-btn', ()->  

  attr = $(this).attr('data-btn-attr')
  $('body').addClass('opened-popup')
  $('.product-popup[data-form-attr="'+attr+'"]').addClass('visible')
  

$document.on 'click', ->
  if $('.popup-wrapper').hasClass('visible')
    $.clickOut('.popup-wrapper',
    ()->
      $('.popup-wrapper').removeClass('visible')
      $('body').removeClass('opened-popup')
    {except: ".order-popup-btn, .popup-wrapper"}
    )

  if $('.product-popup').hasClass('visible')
    $.clickOut('.product-popup',
    ()->
      $('.product-popup').removeClass('visible')
      $('body').removeClass('opened-popup')
    {except: '.popup-btn, .product-popup'}
    )