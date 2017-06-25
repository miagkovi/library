# frozen_string_literal: true

require_relative 'author'
require_relative 'book'
require_relative 'order'
require_relative 'reader'
require 'yaml'

class Library
  attr_accessor :authors, :readers, :books, :orders

  def initialize(books = [], orders = [], readers = [], authors = [])
    @books = books
    @orders = orders
    @readers = readers
    @authors = authors
  end

  def db_load(file_path = './db.yaml')
    parsed = YAML.load(File.open(file_path))
    @books = parsed[:books]
    @orders = parsed[:orders]
    @readers = parsed[:readers]
    @authors = parsed[:authors]
    puts 'Data loaded successfully.'
  rescue ArgumentError => e
    puts "Could not parse YAML: #{e.message}"
  end

  def db_save(data, file_path = './db.yaml')
    File.open(file_path, 'w') { |f| f.write(data.to_yaml) }
    puts 'Data saved successfully.'
  rescue ArgumentError => e
    puts "Could not save YAML: #{e.message}"
  end

  def top_reader
    top :reader
  end

  def top_book
    top :book
  end

  def top_three_books_readers
    @orders.group_by(&:book)
           .max_by(3){|x, orders| orders.size}
           .to_h
           .values
           .flatten(1)
           .collect{|order| order.reader}
           .uniq
           .size
  end

  def to_s
    "#{@books}\n#{@authors}\n#{@readers}\n#{orders}"
  end

  private

  def top(obj)
    @orders.group_by(&obj).max_by{|x, orders| orders.size}[0]
  end
end
