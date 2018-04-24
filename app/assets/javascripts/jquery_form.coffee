$document.on 'submit', 'form.ajax-form', (e)->
	e.preventDefault();
	$form = $(this)
	$(this).ajaxSubmit({
		type: "POST"
		success: (data) ->
			$(".success-popup-wrap").addClass("visible")
			$('body').addClass('opened-popup')
			setTimeout (->
				$(".success-popup-wrap").removeClass("visible")
				$('body').removeClass('opened-popup')
				), 1000
			$(this)[0].reset()
	})
