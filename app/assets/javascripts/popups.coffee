
$(document).on 'click', '.order-popup-btn', ()->  
	$('.popup-wrapper').addClass('visible')
	$('body').addClass('opened-popup')
	if $('.product-popup').hasClass('visible')
		$('.product-popup').removeClass('visible')

	$('.close-popup').on 'click', ->
		$(".popup-wrapper").removeClass('visible')
		$('body').removeClass('opened-popup')



$(document).on 'click', '.popup-btn', ()->  

	attr = $(this).attr('data-btn-attr')
	$('body').addClass('opened-popup')
	$('.product-popup[data-form-attr="'+attr+'"]').addClass('visible')
	
$(document).on 'click', '.popup-work-btn', ()-> 

	$('.info-work-popup').addClass('visible')
	$('body').addClass('opened-popup')


$.clickOut('.popup-wrapper',
	()->
		$('.popup-wrapper').removeClass('visible')
		$('body').removeClass('opened-popup')
	{except: ".popup-btn, .popup-work-btn, .order-popup-btn, .product-popup, .info-work-popup"}
	)

$.clickOut('.product-popup',
	()->
		$('.product-popup').removeClass('visible')
		$('body').removeClass('opened-popup')
	{except: '.popup-btn, .popup-work-btn, .popup-wrapper, .info-work-popup, .order-popup-btn'}
	)

$.clickOut('.info-work-popup',
	()->
		$('.info-work-popup').removeClass('visible')
		$('body').removeClass('opened-popup')
	{except: '.popup-btn, .popup-work-btn, .popup-wrapper, .product-popup, .order-popup-btn'}
)


$(document).on 'click', '.close-popup', ()->
	$(".popup-wrapper").removeClass('visible')
	$('.product-popup').removeClass('visible')
	$('.info-work-popup').removeClass('visible')
	$('body').removeClass('opened-popup')