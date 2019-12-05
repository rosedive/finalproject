class OrderBooksController < ApplicationController
  before_action :set_order_book, only: [:show, :edit, :update, :destroy]

  def index
    @order_books = OrderBook.all
  end

  def show
  end

  def new
    @order_book = OrderBook.new
  end

  def edit
  end

  def create
    @order_book = OrderBook.new(order_book_params)
    if @order_book.save
      redirect_to @order_book, notice: 'Order book was successfully created.'
    else
      render :new
    end
  end

  def update
    if @order_book.update(order_book_params)
      redirect_to @order_book, notice: 'Order book was successfully updated.'
    else
      render :edit 
    end
  end
  
  def destroy
    @order_book.destroy
    redirect_to order_books_url, notice: 'Order book was successfully destroyed.' 
  end

  private
    def set_order_book
      @order_book = OrderBook.find(params[:id])
    end
  
    def order_book_params
      params.require(:order_book).permit(:user_id, :book_id)
    end
end
