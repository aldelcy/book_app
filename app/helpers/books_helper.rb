module BooksHelper

	def issued_num(book)
		issued = book.checkouts.where(time_in: nil)
		issued.size
	end

	def maxcheckout(book)
		book.quantity.to_i - issued_num(book).to_i
	end

end