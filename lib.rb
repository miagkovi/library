DATA_PATH = 'data.yaml'

require './bin/Library'
require 'yaml'

puts 'Welcome to Library'

data = YAML::load(File.open(DATA_PATH))

library = Library.new(
		authors: data.authors,
		books: data.books,
		orders: data.orders,
		readers: data.readers
	)

puts "Library Data Loaded..."

puts "help - to see all options"

loop do
  input = gets.chomp
  command, *params = input.split /\s/

  case command
  when /\Ahelp\z/i
    puts "Your options:"
    puts "help - Options"
    puts "top_reader - Who often takes the book"
    puts "top_book - What is the most popular book"
    puts "top_book_readers - How many people ordered one of the three most popular books"
    puts "orders - Show All Orders"
    puts "books - Show All Books"
    puts "readers - Show All Readers"
    puts "authors - Show All Authors"
    puts "exit"
  when /\Atop_reader\z/i
  	puts "Top Reader:"
    puts library.top_reader
  when /\Atop_book\z/i
  	puts "Top Reader:"
    puts library.top_book
  when /\Atop_book_readers\z/i
  	puts "Top Reader:"
    puts library.top_book_readers
  when /\Aorders\z/i
  	puts "All Orders:"
    puts library.orders
  when /\Abooks\z/i
  	puts "All Books:"
    puts library.books
  when /\Aauthors\z/i
  	puts "All Authors:"
    puts library.authors
  when /\Areaders\z/i
  	puts "All Readers:"
    puts library.readers
  when /\Aexit\z/i
  	break
  else puts 'Invalid command (help to see all options)'
  end
end
