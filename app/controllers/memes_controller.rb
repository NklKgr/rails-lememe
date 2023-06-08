class MemesController < ApplicationController
  def index
    @user = current_user
    @memes = @user.feed
    @communities = current_user.communities
    @challenges = Challenge.all
    @communities_search = current_user.communities

    filter = params[:filter]

    query = params[:query]
    if query.present?
      @communities_search = Community.where("name ILIKE ?", "%#{params[:query]}%")
      @memes = @communities_search.map do |community|
        community.memes
      end.flatten
    elsif filter.present?
      @communities_search = Community.where("name ILIKE ?", "%#{params[:filter]}%")
      @memes = @communities_search.map do |community|
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
