class Book < ApplicationRecord
	has_many :checkouts

	after_create :set_defaults

	def set_defaults
		self.cover ||= 'new_book.jpg'
		self.isbn ||= "RAMDON - "+SecureRandom.hex(n=4)
		self.save!
	end
end
