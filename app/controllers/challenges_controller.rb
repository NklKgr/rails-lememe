class ChallengesController < ApplicationController
  def new
    @challenge = Challenge.new
  end

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

  def create
    community = Community.find(params[:community_id])
    community.challenges.each do |challenge|
      challenge.update(active: false)
    end

    @challenge = Challenge.new(challenge_params)
    @challenge.community = community
    # @challenge.community.update(active: false)
    # raise
    if @challenge.save
      redirect_to community_path(@challenge.community)
    else
      community.challenges.last.update(active: true)
      render :new
    end
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :description, :community_id)
  end

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end
end
