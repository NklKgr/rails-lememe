class MemesController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @memes = @user.feed

  end
  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      redirect_to @meme
    else
      render 'new'
    end
  end
  def leaderboard
    @users = User.order(high_score: :desc).limit(300)
  end
  private

  def meme_params
    params.require(:meme).permit(:title, :image)
  end
end
