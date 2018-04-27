$(document).on('click','.one-product', function(){

	var attr = $(this).data("popup-ajax");

	$.get('/product/' + attr, function(data){
		$(".product-popup .left-part .img-bg").text(data.image)

		$(".product-popup .right-part .big-title.black").text(data.name)
		// $(".product-popup .right-part .sub-title").text(data.description)
		$(".product-popup .right-part .info-block .one-info-block .price").text(data.price)
		$(".product-popup .right-part .info-block .one-info-block .country").text(data.country)
		$(".product-popup .right-part .info-block .one-info-block .company").text(data.company_name)
		$(".product-popup .right-part .info-block .one-info-block .category").text(data.category)
		$(".product-popup .right-part .info-block .one-info-block .freeze-type").text(data.freeze_type)
		// if (text(data.present) == true){
		// 	$(".product-popup .right-part .info-block .one-info-block .present").text("pasd")
		// } else{
		// 	$(".product-popup .right-part .info-block .one-info-block .present").text("p123213d")
		// }
		$(".product-popup .right-part .info-block .one-info-block .temperature").text(data.temperature)
		

		
	});
		
})