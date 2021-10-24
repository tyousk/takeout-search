class PostsController < ApplicationController
	def index
    @posts = Post.all
  end

	def new
    @post = Post.new
  end

	private

	def post_params
    params.require(:post).permit(:cooking_name, :image, :category_id, :immpression, :price, :opening, :closing, :prefecture_id,
		:city, :address, :building, :user_id)
  end
end
