class PostsController < ApplicationController
  before_action :search_post_form, only: [:index, :search_post, :show]

  def index
    @posts = Post.all.order(created_at: 'desc')
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

  def search_post
    @results = @p.result.order(created_at: 'desc')
  end

  private

  def post_params
    params.require(:post).permit(:cooking_name, :image, :category_id, :impression, :price, :store_name, :opening, :closing, :prefecture_id,
                                 :city, :address, :building, :prefecture_id).merge(user_id: current_user.id)
  end

  def search_post_form
    @p = Post.ransack(params[:q])
  end
end
