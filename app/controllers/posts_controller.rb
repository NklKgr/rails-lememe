class PostsController < ApplicationController
  def index
    @posts = Post.all
    @new_post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_url, notice: 'Post successfully created.'
    else
      redirect_to posts_url, alert: 'Failed to create the post.'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
