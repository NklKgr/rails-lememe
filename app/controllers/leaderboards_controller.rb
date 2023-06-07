class LeaderboardsController < ApplicationController
  def index
    @leaderboard = Leaderboard.order(score: :desc).limit(10)
  end


  def create
    @leaderboard = Leaderboard.new(leaderboard_params)
    if @leaderboard.save
      render json: { message: 'Score added to leaderboard.' }, status: :ok
    else
      render json: { message: 'Failed to add score to leaderboard.' }, status: :unprocessable_entity
    end
  end

  private

  def leaderboard_params
    params.require(:leaderboard).permit(:score, :player)
  end
end
