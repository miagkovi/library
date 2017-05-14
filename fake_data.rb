def fake_data
  readers = [
    Reader.new('Jonh Doe', 'jdoe@gmail.com', 'New York', '1st Street', '5'),
    Reader.new('Jane Doe', 'jane@hotmail.com', 'New York', '1st Street', '5'),
    Reader.new('Jack Jackson', 'jjackson@gmail.com', 'New York', '2nd Street', '8'),
    Reader.new('Matt Lucker', 'mlucker@dcore.com', 'Chicago', 'Main Street', '66'),
    Reader.new('Duck Nucken', 'nuka@gmail.com', 'Los Angeles', 'Havana Street', '7'),
    Reader.new('Steve Vander', 'vanders@music.la', 'Los Angeles', 'Little Valley', '51'),
    Reader.new('Fox Mulder', 'xfiles@gmail.com', 'New Jersea', '222 Avenue', '4')
  ]

  authors = [
    Author.new('Jay Asher', 'Jay Asher\'s debut YA novel, Thirteen Reasons Why...'),
    Author.new('Rupi Kaur', 'Rupi Kaur is a renowned author, poet, and multimedia artist...'),
    Author.new('Liane Moriarty', 'Liane Moriarty is the Australian author of six internationally...'),
    Author.new('Margaret Atwood', 'Margaret Atwood, whose work has been published in over thirty-five countries...'),
    Author.new('David Baldacci', 'David Baldacci has been writing since childhood...'),
    Author.new('Rupi Kaur', 'Rupi Kaur is a renowned author, poet, and multimedia artist...')
  ]

  books = [
    Book.new('Thirteen Reasons Why', authors[0]),
    Book.new('Milk and Honey', authors[1]),
    Book.new('Big Little Lies', authors[2]),
    Book.new('The Handmaid\'s Tale', authors[3]),
    Book.new('Oryx and Crake', authors[3]),
    Book.new('Hag-Seed', authors[3]),
    Book.new('The Fix', authors[4]),
    Book.new('End Game', authors[4]),
    Book.new('FaceOff', authors[4])
  ]

  orders = [
    Order.new(books[0], readers[0], Time.new),
    Order.new(books[0], readers[1], Time.new),
    Order.new(books[1], readers[2], Time.new),
    Order.new(books[1], readers[1], Time.new),
    Order.new(books[2], readers[1], Time.new),
    Order.new(books[4], readers[1], Time.new),
    Order.new(books[4], readers[3], Time.new),
    Order.new(books[4], readers[2], Time.new),
    Order.new(books[6], readers[4], Time.new),
    Order.new(books[5], readers[4], Time.new),
    Order.new(books[3], readers[5], Time.new),
    Order.new(books[5], readers[1], Time.new),
    Order.new(books[7], readers[5], Time.new),
    Order.new(books[8], readers[6], Time.new),
    Order.new(books[8], readers[1], Time.new)
  ]

  {
    readers: readers,
    authors: authors,
    books: books,
    orders: orders
  }
end
