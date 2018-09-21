class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show]

  def new 
    @post = Post.new 
  end
  
  def show
  end

  def edit
  end

  def update
    if @post.update(post_params).valid?
      redirect_to post_path(@post)
    else 
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
