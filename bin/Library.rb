class Library
	attr_accessor :books, :orders, :readers, :authors
	def initialize(data = {})
		@books = data[:books]
		@orders = data[:orders]
		@readers = data[:readers]
		@authors = data[:authors]
	end

	def top_reader
		top_reader = Object.new
		orders_qty = 0
		@readers.each do |r|
			if readers_orders(r.name).size > orders_qty
				orders_qty = readers_orders(r.name).size
				top_reader = r
			end
		end
		top_reader
	end

	def top_book
		top_book = Object.new
		orders_qty = 0
		@books.each do |b|
			if books_orders(b.title).size > orders_qty
				orders_qty = books_orders(b.title).size
				top_book = b
			end
		end
		top_book
	end

	def top_book_readers
		top_book = self.top_book
		top_book_readers = []
		books_orders(top_book.title).each{ |o| top_book_readers << o.reader}
		top_book_readers
	end

	private

	def readers_orders(reader_name)
		@orders.select{ |order| order.reader.name == reader_name }
	end

	def books_orders(book_title)
		@orders.select{ |order| order.book.title == book_title }
	end



end
