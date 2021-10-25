class PostsController < ApplicationController
	def index
    @posts = Post.all
  end

	def new
    @post = Post.new
  end

	def create
		@post = Post.new(post_params)
    Post.create(post_params)
  end

	private

	def post_params
    params.require(:post).permit(:cooking_name, :image, :category_id, :impression, :price, :opening, :closing, :prefecture_id,
		:city, :address, :building).merge(user_id: current_user.id)
  end
end
