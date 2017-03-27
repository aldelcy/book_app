'use strict';


var pageReady = function(){

	var cartCookie = Cookies.get('checkout');

	if(!cartCookie){
		cartCookie = Cookies.set('checkout', '', { expires: 1, path: '/' });
		var checkoutItems = [];
	}else{
		var checkoutItems = cartCookie.split(/, /);
	}


	


	function updateCart(){
		$('.checkout_num .num').text(checkoutItems.length);
		$('#cart_list_items').val(checkoutItems.join(', '));
		if($('.cart_list').hasClass('open')){
			$('.submit_checkout_list').submit();
		}
	};
	updateCart();




	$.each(checkoutItems, function(index, value){
		var isbn = value.split('_')[0];
		var qty = value.split('_')[1];
		$('input.checkout[data-book="'+isbn+'"]').prop('checked', true);
		$('.added_to_checkout[data-book="'+isbn+'"]').show();
	});





	$('.complete_checkout').click(function(event){
		event.preventDefault();
		var checkoutList = []

		$.each(checkoutItems, function(index, value){
			var isbn = value.split('_')[0];
			var inPut = $('input[data-book="'+isbn+'"]').val();
			checkoutList.push(isbn+"_"+inPut);
		});

		console.log(checkoutList);
		$('input#total_checkout').val(checkoutList);
		setTimeout(function(){ 
			$('.total_checkout_list').submit();
		}, 2000);
	});






	$('input.checkout[type="checkbox"]').hover(function(){
		$(this).siblings('.checkout_text').fadeIn(100);
	}, function(){
		$(this).siblings('.checkout_text').fadeOut(100);
	});

	$('input.checkout[type="checkbox"]').click(function(){
		var thisBook = $(this).data('book');


		if($(this).is(':checked')){
			if ($.inArray(thisBook+"_0", checkoutItems) == -1){
				checkoutItems.push(thisBook+"_0");
				$('.added_to_checkout[data-book="'+thisBook+'"]').fadeIn(200);
				updateCart();
			}
		}else{
			checkoutItems = jQuery.grep(checkoutItems, function(value) {
			  return value != thisBook+"_0";
			});
			$('.added_to_checkout[data-book="'+thisBook+'"]').fadeOut(200);
			updateCart();
		}

		cartCookie = Cookies.set('checkout', checkoutItems.join(', '));

	});






	$('.cart').hover(function(){
		$(this).toggleClass('ion-ios-cart ion-checkmark-circled');
	});


};

$(document).ready(pageReady);
$(document).on('page:load', pageReady);