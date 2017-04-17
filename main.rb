#!/usr/bin/ruby

DATA_PATH = 'data.yaml'

require('./bin/Library')
require 'yaml'

puts 'Welcome to Library'

data = YAML::load(File.open(DATA_PATH))

library = Library.new(
		authors: data.authors,
		books: data.books,
		orders: data.orders,
		readers: data.readers
	)

puts "Top Reader:"
puts library.top_reader
puts "Top Book:"
puts library.top_book
puts "Readers of the Top Book:"
puts library.top_book_readers
