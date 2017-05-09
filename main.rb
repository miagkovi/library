require './bin/Author'
require './bin/Book'
require './bin/Order'
require './bin/Reader'
require './bin/Library'
require './DataFiller'

DATA_PATH = './marshal_data.rb'

sleep(1)

puts 'Welcome to Library'

sleep(1)

if File::exist?(DATA_PATH)
  puts "Data file is OK. Loading data..."
  sleep(1)
else
  puts "No data file! Creating new data file..."
  puts "Filling data file..."
  Marshal::dump(data_filler, File::open(DATA_PATH, 'w')) #EOFError
  sleep(1)
end

library = Marshal::load(File::open(DATA_PATH))

puts "Data loaded successfully."

puts "Enter help to see all available options"

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
  else puts 'Invalid command (enter help to see all options)'
  end
end