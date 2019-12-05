class CommentsController < ApplicationController
#   before_action :find_book
#   before_action :find_comment, only: [:destroy, :edit , :update]

#   def create
#     @comment = @book.comments.create(params[:comment].permit(:description))
#     @comment.save
#     if @comment.save
#       redirect_to book_path(@book)
#     else
#       render 'new'
#     end
#   end
  
#   def destroy
#     @comment.destroy
#     redirect_to book_path(@book)
#     end

#   def edit
#   end

#   def update
#     if @comment.update(params[:comment].permit(:description))
#       redirect_to book_path(@book)
#     else
#       render 'edit'
#     end
#   end
#   private
  
#   def find_product
#     @book = Book.find(params[:book_id])
#   end

#   def find_comment
#     @comment = @book.books.find(params[:id])
#   end




before_action :find_post
 before_action :find_comment, only: [:destroy, :edit , :update]
def create
@comment = @book.comments.create(params[:comment].permit(:description))
@comment.save
if @comment.save
  redirect_to book_path(@book)
else
  render 'new'
end
end

def destroy
@comment.destroy
redirect_to book_path(@book)
end

def edit

end

def update
  if @comment.update(params[:comment].permit(:description))
    redirect_to book_path(@book)
    else
      render 'edit'
    end
  end
  private
  def find_post
  
    @book = Book.find(params[:book_id])
  end
  
  def find_comment
    @comment = @book.comments.find(params[:id])
  end

end