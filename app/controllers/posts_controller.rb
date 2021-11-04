class PostsController < ApplicationController

  before_action :search_category_post, only: [:index, :category, :show, :prefecture, :search]
  before_action :search_prefecture_post, only: [:index, :category, :show, :prefecture, :search]
	def index
    @posts = Post.all
  end

	def new
    @post = Post.new
  end

	def create
		@post = Post.new(post_params)
    Post.create(post_params)
		redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
		redirect_to root_path
  end

	def edit
    @post = Post.find(params[:id])
  end

	def update
    post = Post.find(params[:id])
    post.update(post_params)
		redirect_to root_path
  end

	def show
    @post = Post.find(params[:id])
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  def category
    @posts = @q.result
    category_id = params[:q][:category_id_eq]
    @category = Category.find_by(id: category_id)
  end

  def prefecture
    @posts = @p.result
    prefecture_id = params[:q][:prefecture_id_eq]
    @prefecture = Prefecture.find_by(id: prefecture_id)
  end

	private

	def post_params
    params.require(:post).permit(:cooking_name, :image, :category_id, :impression, :price, :store_name, :opening, :closing, :prefecture_id,
		:city, :address, :building, :prefecture_id).merge(user_id: current_user.id)
  end

  def search_category_post
    @q = Post.ransack(params[:q])
  end

  def search_prefecture_post
    @p = Post.ransack(params[:q])
  end
end
