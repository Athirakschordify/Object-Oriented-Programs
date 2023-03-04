class Book
  attr_reader :book_name, :author_name, :page_count, :more, :book_array

  def initialize
    @book_name = ''
    @author_name = ''
    @price = ''
    @more = 'yes'
    @book_array = []
    @count=0
  end

  def answers_start
    until more_book?
      ask
      add_arr
    end

    book_list
  end

  private

  def ask
    puts 'Name of book'
    @book_name = gets.chomp
    puts 'Author of the book'
    @author_name = gets.chomp
    puts 'price of the book'
    @price = gets.to_i
    puts 'Do you want add more book'
    @more = gets.chomp.capitalize
  end

  def more_book?
    @more == 'No'
  end

  def book_list
    @book_array.each_with_index do |item, index|
      puts "Book#{index + 1} {Name: #{item[:book_name]}, Author: #{item[:author_name]}, Price: #{item[:price]}}"
    end
  end

  def add_arr

    book_array << { book_name: @book_name, author_name: @author_name, price: @price }
    @count=@count+1
    puts "Total count =#{@count} "

  end

end

books = Book.new
books.answers_start
