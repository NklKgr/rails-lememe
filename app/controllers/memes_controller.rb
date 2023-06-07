class MemesController < ApplicationController
  def new
    @meme = Meme.new
    @user = current_user
    @challenges = User.first.communities.map {|community| community.challenges}.flatten
  end

  def create
    @meme = Meme.new(meme_params)
    @meme.user = current_user
    # I assume the meme will be creted in the context of a challenge/community
    @meme.challenge = Challenge.find(params[:challenge_id])
    if @meme.save
      redirect_to memes_path, notice: "Meme was successfully created."
    else
      puts @meme.errors.full_messages
      render :new
    end
  end

  private

  def meme_params
    params.require(:meme).permit(:title, :image)
  end
end
