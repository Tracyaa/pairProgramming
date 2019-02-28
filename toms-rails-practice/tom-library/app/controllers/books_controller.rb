class BooksController < ApplicationController

  before_action :get_book, only: [:show, :destroy]

  def index
    @books = Book.all
  end

  def show
    @all_authors = Author.all
    @author_book = AuthorBook.new
    
  end

  # def destroy
  #   @book.author_books.find_by(params[:author_id])
  #   redirect_to @show
  # end



  private

  def get_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :pages)
  end

end
