class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = if params[:search]
      Book.where('book_title LIKE ?', "%#{params[:search]}%").page params[:page]
    else
      @books = Book.order_list(params[:sort_by]).page params[:page]
    end
  end

  def search
    @book =book.search(params[:search])
  end

  def show
    @comments = Comment.where(book_id: @book)
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id=current_user.id
    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:book_title, :author, :status, :image, :image_cache, :search, :user_id)
    end
end
