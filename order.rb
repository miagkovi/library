# frozen_string_literal: true

class Order
  attr_accessor :book, :reader, :date

  def initialize(book, reader, date)
    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "- - - - - - - - - -\nOrder date: #{@date}\nBook: #{@book}\nReader: #{@reader}"
  end
end
