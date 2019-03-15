class AuthorBooksController < ApplicationController

  def destroy
    @author_book = AuthorBook.find(params[:id])
    @author_book.destroy
    # @author = @book.author_books.find_by()
    redirect_to book_path(@author_book.book)
  end

  def create
    @author_book = AuthorBook.create(author_book_params)
    if @author_book.valid?
      redirect_to book_path(@author_book.book)
    else
      flash[:error] = @author_book.errors.full_messages
      redirect_to book_path(@author_book.book)
    end
  end

  private

  def author_book_params
    params.require(:author_book).permit(:author_id, :book_id)
  end

end
