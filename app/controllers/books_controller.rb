class BooksController < ApplicationController

  # 投稿データの保存
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  # 投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:body, :title)
  end

end
