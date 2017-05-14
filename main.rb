# frozen_string_literal: true

require_relative 'library'
require_relative 'fake_data'

library = Library.new

unless File.exist?('./db.yaml')
  print 'Emulation of data input...'
  sleep(1)
  print '.'
  sleep(1)
  print '.'
  sleep(1)
  print ".\n"

  library.db_save(fake_data)
end

library.db_load

sleep(1)

puts 'Welcome to Library'
puts 'Enter help to see all available options'

loop do
  input = gets.chomp
  command, *params = input.split (/\s/)

  case command
    when /\Ahelp\z/i
      puts 'Your options:'
      puts 'top_reader - Who often takes the book'
      puts 'top_book - What is the most popular book'
      puts 'top_three_books_readers - Readers of 3 top books'
      puts 'exit'
    when /\Atop_reader\z/i
      puts 'Top Reader:'
      puts library.top_reader
    when /\Atop_book\z/i
      puts 'Top book:'
      puts library.top_book
    when /\Atop_three_books_readers\z/i
      puts 'Readers of 3 top books:'
      puts library.top_three_books_readers
    when /\Aexit\z/i
      break
    else puts 'Invalid command (enter help to see all options)'
  end
end