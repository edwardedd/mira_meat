$document.on 'click', '.menu-button', ->

	# $(this).toggleClass("opened")
	$('.manu-container').addClass('opened')
	$('body').addClass('menu-opened')

$document.on 'click', '.close-button', ->
	$('.manu-container').removeClass('opened')
	$('body').removeClass('menu-opened')

