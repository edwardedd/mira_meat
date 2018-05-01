$(document).on('click','.one-product', function(){

	var attr = $(this).data("popup-ajax");

	$.get('/product/' + attr, function(data){
		$(".product-popup .left-part .img-bg").css('backgroundImage', 'url(' + data.image.url + ')')

		$(".product-popup .right-part .big-title.black").text(data.name)
		$(".product-popup .right-part .sub-title").text(data.description)
		$(".product-popup .right-part .info-block .one-info-block .price").text(data.price)
		$(".product-popup .right-part .info-block .one-info-block .country").text(data.country)
		$(".product-popup .right-part .info-block .one-info-block .company").text(data.company_name)
		$(".product-popup .right-part .info-block .one-info-block .category").text(data.category)
		$(".product-popup .right-part .info-block .one-info-block .freeze-type").text(data.freeze_type)
		$(".product-popup .right-part .info-block .one-info-block .present").text(data.present) 
			if ((data.present) == true) {
				$(".product-popup").find(".product-no-present").removeClass("active")
				$(".product-popup").find(".product-present").addClass("active")
			}else{
				$(".product-popup").find(".product-no-present").addClass("active")
				$(".product-popup").find(".product-present").removeClass("active")
			}
		$(".product-popup .right-part .info-block .one-info-block .temperature").text(data.temperature)
		$('.popup-wrapper .title').text(data.name)
		$('.popup-wrapper .id input:text').val(data.id)
	});
})


///// V A C A N S Y   A J A X  //////

$(document).on('click','.one-vacancies-box', function(){

	var attr = $(this).data("popup-ajax");

	$.get('/vacancy/' + attr, function(data){
		$(".info-work-popup .inner-popup .title").text(data.vacancy)
		$(".info-work-popup .inner-popup .money ").text(data.salary)
		$('.info-work-popup .id input:text').val(data.id)
	});
})