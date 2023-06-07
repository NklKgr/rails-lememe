class MemesController < ApplicationController
  before_action :set_meme, only: [:upvote]

  def index
    @user = current_user
    @memes = @user.feed
  end


  # def downvote
  #   @meme.update(score: @meme.score - 1)
  #   redirect_to memes_path
  # end

  private

  def set_meme
    @meme = Meme.find(params[:id])
  end
end
