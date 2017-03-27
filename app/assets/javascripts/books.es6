'use strict';


var pageReady = function(){

	$('.book').hover( function(){
		var info = $(this).data('book');
		var thisInfo = $('.info[data-book="'+ info +'"]');
		var thisActions = $('.actions[data-book="'+info+'"]');

		thisInfo.stop(0);
		thisInfo.fadeToggle(500);

		thisInfo.click( function(){
			
			thisActions.stop(0);
			thisActions.slideToggle(500);

			$(this).find('button').click(function(){
				thisActions.stop(0);
			});

		});


		// $(this).mouseleave(function(){
		// 	setTimeout(function(){ thisActions.fadeOut(500)}, 500);
		// });
	});

	$('.edit_book').click(function(){
		$(this).siblings('.edit_book_form').toggle();
	});

	$('form.edit_book').change(function(){
		var bookQty = $(this).find('input[name="book[quantity]"]');
		var minbookQty = bookQty.attr('min');
		var thisErr = $(this).siblings('.count_err');

		if(bookQty.val()<minbookQty){
			bookQty.val(minbookQty);
			thisErr.fadeIn(100);
			setTimeout(function(){ thisErr.fadeOut(100) }, 3000);
		}
	});

	$('.cant_delete').click(function(){
		$('.count_err').fadeIn(100);
		setTimeout(function(){ $('.count_err').fadeOut(100) }, 3000);
	});



	$('input.search_term').on('input' ,function(){
		if($(this).val() !== '' ){
			$('.books_search').show();
			$('.books').hide();
			$('.search_form').submit();
		}else{
			$('.books_search').hide();
			$('.books').show();
		}

	});
};

$(document).ready(pageReady);
$(document).on('page:load', pageReady);