class VotesController < ApplicationController
  def create
    @meme = Meme.find(params[:meme_id])
    @vote = Vote.new
    @vote.user = current_user
    @vote.meme = @meme

    if params[:vote] == "up" && @vote.save!
      @vote.voted = true
      @meme.update(score: @meme.score + 1)
      # redirect_to memes_path
    elsif params[:vote] == "down" && @vote.save!
      @vote.voted = false
      @meme.update(score: @meme.score - 1)
      # redirect_to memes_path
    else
      render "memes/index", status: :unprocessable_entity
    end
  end

  def update
    @meme = Meme.find(params[:meme_id])
    @vote = Vote.find_by(user: current_user, meme: @meme)

    if params[:vote] == "up" && @vote.voted == true
      new_voted = nil
      score_change = -1
    elsif params[:vote] == "up" && @vote.voted.nil?
      new_voted = true
      score_change = 1
    elsif params[:vote] == "up" && @vote.voted == false
      new_voted = true
      score_change = 2
    elsif params[:vote] == "down" && @vote.voted == false
      new_voted = nil
      score_change = 1
    elsif params[:vote] == "down" && @vote.voted.nil?
      new_voted = false
      score_change = -1
    elsif params[:vote] == "down" && @vote.voted == true
      new_voted = false
      score_change = -2
    end
    @vote.update(voted: new_voted)
    @meme.update(score: @meme.score + score_change)

    redirect_to memes_path
  end
end
