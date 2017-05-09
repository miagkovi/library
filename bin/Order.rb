class Order
	attr_accessor :book, :reader, :date
	def initialize(options={})
		@book = options[:book]
		@reader = options[:reader]
		@date = options[:date]
	end

	def to_s
		"- - - - - - - - - -\nOrder date: #{@date}\nBook: #{@book}\nReader: #{@reader}"
	end
end