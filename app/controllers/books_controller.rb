class BooksController < ApplicationController

  # 投稿データの保存
  def create
    @book = Book.new(post_image_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to post_images_path
  end

  def index
    @book = Book.new
  end

  def show
  end

  def edit
  end

  # 投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:book).permit(:body, :title)
  end

end
