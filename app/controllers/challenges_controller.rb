class ChallengesController < ApplicationController
  def index
    query = params[:query]
    if query.present?
      sql_query = <<~SQL
        challenges.name ILIKE :query
        OR community.title ILIKE :query
      SQL
      @challenges = Challenge.joins(:community).where(sql_query, query: "%#{params[:query]}%")
    else
      @challenges = Challenge.all
    end
  end
end
