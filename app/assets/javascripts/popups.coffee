$document.ready ->
	$('.order-popup-btn').on "click", ->
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


$document.on 'click', ->
	if $('.popup-wrapper').hasClass('visible')
		$.clickOut('form',
		()->
			$('.popup-wrapper').removeClass('visible')
			$('body').removeClass('opened-popup')
		{except: ".order-popup-btn, form"}
		)

	if $('.product-popup').hasClass('visible')
		$.clickOut('.product-popup',
		()->
			$('.product-popup').removeClass('visible')
			$('body').removeClass('opened-popup')
		{except: '.popup-btn, .product-popup'}
		)

	if $(".info-work-popup").hasClass('visible')
		$.clickOut('.inner-popup',
			()->
				$('.info-work-popup').removeClass('visible')
				$('body').removeClass('opened-popup')
		{except: '.popup-work-btn, .inner-popup'}
		)
	 

	