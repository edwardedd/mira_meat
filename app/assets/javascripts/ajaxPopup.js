// $(document).on('click', '.one-product', function(e) {
// 	e.preventDefault();
// 	$(this).attr('id')
// 	console.log('id')
// 	$.ajax({
// 		url: '/product-popup',
// 		type: 'GET',
// 		data: data,
// 		success: function(result) {
// 			alert('the request was successfully sent to the server');
// 		}

// 	})

// });



$(document).on('click','.one-product', function(){

	var attr = $(this).data("popup-ajax");

	$.get('/productPopup/' + attr, function(data){

		$(".product-popup .right-part").text(data.category)
		// var obj = jQuery.parse(data);

		// $(".product-popup .right-part").text(obj.category);
	});
		
})