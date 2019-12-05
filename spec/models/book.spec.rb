require 'rails_helper'

RSpec.describe Book, type: :model do

  it "Validation does not pass if the book title is empty" do
    book = Book.new(book_title: '', author: 'rose',status:'available')
    expect(book).not_to be_valid
  end

  it "Validation does not pass if author is empty" do
   book= Book.new(book_title:'math2',author:'',status:'not available')
   expect(book).not_to be_valid
  end

  it "validation does not pass If book_title and author blank" do
    book= Book.new(book_title:'',author:'',status:'not available')
    expect(book).not_to be_valid
  end
end