$document.on 'submit', 'form.ajax-form', (e)->
	e.preventDefault();
	$form = $(this)
	$(this).ajaxSubmit({
		type: "POST"
		success: (data) ->
			if $(".info-work-popup").hasClass('visible')
				$('.info-work-popup').removeClass('visible')
				$('body').removeClass('opened-popup')
			if $('.product-popup').hasClass('visible')
				$('.product-popup').removeClass('visible')
				$('body').removeClass('opened-popup')
			if $('.popup-wrapper').hasClass('visible')
				$('.popup-wrapper').removeClass('visible')
				$('body').removeClass('opened-popup')
			
			$(".success-popup-wrap").addClass("visible")
			$('body').addClass('opened-popup')
			setTimeout (->
				$(".success-popup-wrap").removeClass("visible")
				$('body').removeClass('opened-popup')
				), 1000
			$(this)[0].reset();
	})
