class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def community
    @posts = Post.all
    @new_post = Post.new
  end
  
end
