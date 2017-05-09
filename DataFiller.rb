def data_filler
    readers = [
      Reader.new(
        name: 'Jonh Doe',
        email: 'jdoe@gmail.com',
        city: 'New York',
        street: '1st Street',
        house: '5'),
      Reader.new(
        name: 'Jane Doe',
        email: 'jane@hotmail.com',
        city: 'New York',
        street: '1st Street',
        house: '5'),
      Reader.new(
        name: 'Jack Jackson',
        email: 'jjackson@gmail.com',
        city: 'New York',
        street: '2nd Street',
        house: '8')
    ]

    authors = [
      Author.new(
        name: 'Jay Asher',
        biography: 'Jay Asher\'s debut YA novel, Thirteen Reasons Why...'),
      Author.new(
        name: 'Rupi Kaur',
        biography: 'Rupi Kaur is a renowned author, poet, and multimedia artist...'),
      Author.new(
        name: 'Liane Moriarty',
        biography: 'Liane Moriarty is the Australian author of six internationally...')
    ]

    books = [
      Book.new(
        title: 'Thirteen Reasons Why',
        author: authors[0]),
      Book.new(
        title: 'Milk and Honey',
        author: authors[1]),
      Book.new(
        title: 'Big Little Lies',
        author: authors[2])
    ]

    orders = [
      Order.new(
        book: books[0],
        reader: readers[0],
        date: Time.new),
      Order.new(
        book: books[0],
        reader: readers[1],
        date: Time.new),
      Order.new(
        book: books[1],
        reader: readers[2],
        date: Time.new),
      Order.new(
        book: books[1],
        reader: readers[1],
        date: Time.new),
      Order.new(
        book: books[2],
        reader: readers[1],
        date: Time.new)
    ]

Library.new(
  readers: readers,
  authors: authors,
  books: books,
  orders: orders
)

end