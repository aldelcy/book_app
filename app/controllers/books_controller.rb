class BooksController < ApplicationController
	before_action :set_book, only: [:update, :destroy]
	
	def create
		@book = Book.new(book_params)
		format_js if @book.save
	end

	def update
		format_js if @book.update(book_update_params)
	end

	def destroy
		@book_isbn = @book.isbn
		format_js if @book.destroy 
	end

	private

	def set_book
		@book = Book.find(params[:id])
	end

	def format_js
		respond_to { |format| format.js{ render layout: false } }
	end

	def book_params
		params.require('book').permit("name", "isbn", "quantity")	
	end

	def book_update_params
		params.require('book').permit("quantity")	
	end

end
	