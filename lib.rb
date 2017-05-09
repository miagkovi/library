require './bin/Author'
require './bin/Book'
require './bin/Order'
require './bin/Reader'
require './bin/Library'

require 'yaml'

DATA_PATH = './data.yaml'

puts 'Welcome to Library'

if File.exist?(DATA_PATH)
  puts "Data file is OK. Loading data..."
else
  puts "No data file! Creating new data file..."
  File.open(DATA_PATH, "w+")
  puts "Filling data file..."
  to_yaml???
end

data = YAML::load(File.open(DATA_PATH))

library = Library.new(data)

puts "Enter help to see all available options"

puts library.class
puts Book.class
puts library.orders[0].book.author.name.class

loop do
  input = gets.chomp
  command, *params = input.split (/\s/)

  case command
  when /\Ahelp\z/i
    puts "Your options:"
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
