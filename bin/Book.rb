class Book
	attr_accessor :title, :author
	def initialize(options = {})
		@title = options[:title]
		@author = options[:author]
	end

	def to_s
		"\"#{@title}\" by #{@author}"
	end
end