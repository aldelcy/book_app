class CheckoutsController < ApplicationController

	def create
		params[:total_checkout].split(',').each do |book|
			isbn = book.split('_')[0]
			thisBook = Book.find_by(isbn: isbn)
			qty = book.split('_')[1]
			
			checkout = Checkout.create(
					book_id: thisBook.id, 
					# quantity: qty,
					quantity: 1,
					time_out: Time.now, 
					checkout_type:'checked_out' 
					)
		end
		format_js
	end

	def new
		new_checkout = Checkout.new
		new_checkout
	end

	def update
		@checkout = Checkout.where(book_id: params[:book_id])

		@checkout.each do |ch|
			if ch.checkout_type == "checked_out"
				ch.checkout_type = "checked_in"
				ch.time_in = Time.now
				ch.save

				break
			end
		end
	end

	private

	def set_checkout
		@checkout = Checkout.find(params[:id])
	end

	def format_js
		respond_to { |format| format.js{ render layout: false } }
	end

	def checkout_params
		params.require('checkout').permit("book_id", "quantity", "checkout_type", "time_out")	
	end

	def checkout_update_params
		params.require('checkout').permit("time_in")	
	end
end
