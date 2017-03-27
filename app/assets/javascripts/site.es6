'use strict';


var pageReady = function(){

	function openTop(){
		$('.full_top').css('height', '85%');
		$('.bottom_arrow').toggleClass('ion-chevron-up ion-chevron-down');
	};
	function closeTop(){
		$('.full_top').css('height', '430px');
		$('.bottom_arrow').toggleClass('ion-chevron-up ion-chevron-down');
	};

	$('.bottom_arrow').click(function(){
		if($(this).hasClass('ion-chevron-down')){	
			openTop();
		}else{
			closeTop();
		}
	});

	$('.add_new_book').click(function(){
		$('.new_book_form').fadeIn(200);
		$(this).hide();
		closeTop();
	});

	$('.cancel_new_book').click(function(event){
		event.preventDefault();
		$('.add_new_book').fadeIn(200);
		$('.new_book_form').hide();
		openTop();
	});

	$('.create_new_book').click(function(){
		$('.add_new_book').fadeIn(200);
		$('.new_book_form').hide();
		setTimeout( function(){ $(this).closest('form')[0].reset(); }, 300);
		
		openTop();
	});

	$('.cart').click(function(){
		if($(this).hasClass('open')){
			$(this).removeClass('open');
			openTop();
		}else{
			$(this).addClass('open');
			closeTop();
		}
		$('.cart_list').fadeToggle(400);
	});

};

$(document).ready(pageReady);
$(document).on('page:load', pageReady);