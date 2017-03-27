class CheckoutsController < ApplicationController
	# before_action :set_book, only: [:create]

	def create
		params[:total_checkout].split(',').each do |book|
			isbn = book.split('_')[0]
			thisBook = Book.find_by(isbn: isbn)
			
			checkout = Checkout.create(book_id: thisBook.id, time_out: Time.now )
		end
		format_js
	end

	def new
		new_checkout = Checkout.new
		new_checkout
	end

	private

	def set_checkout
		@checkout = Checkout.find(params[:id])
	end

	# def set_book
	# 	@book = Book.find(params[:id])
	# end

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
