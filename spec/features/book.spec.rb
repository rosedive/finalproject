require 'rails_helper'

RSpec.feature "book management function", type: :feature do
  background do
    Book.create(book_title:'ict201',author:'rose',description:'this  book covers a lot   of  things',status:'available')
  end
  scenario "Test book list" do
    Book.create(book_title:'ict201',author:'rose',description:'this  book covers a lot   of  things',status:'available')
    visit books_path
    Book.all
  end

  scenario "Test book creation" do
    @book=Book.new(book_title:'ict201',author:'rose',description:'this  book covers a lot   of  things',status:'available')
    @book.save
  end

  scenario "Test book details" do
    @book1=Book.create(book_title:'math201',author:'rose',description:'this  book covers a lot   of  things',status:'available')
    @book1.book_title
    @book1.author
    @book1.description
    @book1.status
  end

  scenario "Test book update" do
    @book1=Book.create(book_title:'math201',author:'rose',description:'this  book covers a lot   of  things',status:'available')
    @book1.book_title="physics200"

    @book1.description="this book contains important things"
    @book1.save
  end

  scenario "Test book destroy" do
    @book2=Book.create(book_title:'math21',author:'rose',description:'this book covers a lot   of  things',status:'available')
    @book2.destroy
  end
end