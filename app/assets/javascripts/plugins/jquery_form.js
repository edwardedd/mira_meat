$('.form-box form').on 'submit', (e)->
	e.preventDefault();
	$form = $(this)
	$(this).ajaxSubmit({
		type: "POST"
		success: (data) ->
		$form[0].reset()
	})