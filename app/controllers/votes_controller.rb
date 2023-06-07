class VotesController < ApplicationController
  # # before_action :set_meme, only: [:upvote]
  # # def upvote
  # #   @meme = Meme.find(params[:id])
  # #   @meme.update(score: 12445)

  # #   redirect_to memes_path
  # # end

  # def upvote
  #   @post.update(upvotes: @post.upvotes + 1)
  #   respond_to do |format|
  #     format.turbo_stream
  #   end
  # end

  # private

  # def set_meme
  #   @meme = Meme.find(params[:id])
  # end#

  def create
    @meme = Meme.find(params[:meme_id])
    @vote = Vote.new
    @vote.user = current_user
    @vote.meme = @meme
    @vote.voted = true
    if @vote.save
      @meme.update!(score: @meme.score + 1)
      redirect_to memes_path
    else
      render "memes/index", status: :unprocessable_entity
    end
  end

  def destroy
    @meme = Meme.find(params[:meme_id])
    @vote = Vote.find_by(user: current_user, meme: @meme)
    @vote.destroy
    @meme.update!(score: @meme.score - 1)
    redirect_to memes_path
  end
end
