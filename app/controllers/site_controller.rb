class SiteController < ApplicationController
	include BooksHelper

	def home
		@books = Book.all.order(id: 'desc')
		@new_book = Book.new
		@new_checkout = Checkout.new
	end
	
	def not_found
	end

	def search
		params[:search_term] != '' ? @books = Book.where(["lower(name) LIKE ?", "%#{params[:search_term]}%"]) : @books = Book.all.order(id: 'desc')
		respond_to { |format| format.js{ render layout: false } }
	end

	def check
		@checkouts = []
		params[:cart_list_items].split(', ').each do |item|
			isbn = item.split('_')[0]
			qty = item.split('_')[1]
			book = Book.find_by(isbn: isbn)
			
			available = available(book)
			
			@checkouts << [book, qty, available]
		end
		format_js
	end


	private

	def format_js
		respond_to { |format| format.js{ render layout: false } }
	end
end
