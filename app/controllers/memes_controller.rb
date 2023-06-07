class MemesController < ApplicationController
  def index
    @user = current_user
    @memes = @user.feed
    @communities = current_user.communities
    @challenges = Challenge.all

    query = params[:query]
    if query.present?
      @communities = Community.where("name ILIKE ?", "%#{params[:query]}%")
      @memes = @communities.map do |community|
        community.memes
      end.flatten
    else
      @memes = @user.feed
    end
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

  private

  def meme_params
    params.require(:meme).permit(:title, :image)
  end
end
