module BooksHelper

	def issued_num(book)
		issued = book.checkouts.where(checkout_type: 'checked_out')
		qty = 0

		issued.each do |iss|
			qty += iss.quantity.to_i
		end

		qty
	end

	def maxcheckout(book)
		book.quantity.to_i - issued_num(book).to_i
	end

	def available(book)
		book.quantity.to_i > issued_num(book).to_i
	end

end