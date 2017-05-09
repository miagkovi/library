class Author
	attr_accessor :name, :biography
	def initialize(options = {})
		@name = options[:name]
		@biography = options[:biography]
	end

	def to_s
		"#{@name}"
	end
end