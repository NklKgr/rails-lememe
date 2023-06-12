class MemesController < ApplicationController
  before_action :set_meme, only: [:upvote]

  def index
    @user = current_user
    @memes = @user.feed
    @communities = current_user.communities
    @challenges = Challenge.all
    @communities_search = current_user.communities
    @top_memes = @memes.sort_by { |meme| meme.score }.reverse.first(10)

    filter = params[:filter]

    query = params[:query]
    if query.present?
      @communities_search = Community.where("name ILIKE ?", "%#{params[:query]}%")
      @memes = Meme.joins(:challenge).where(challenges: { community_id: @communities_search.pluck(:id) }).order(created_at: :desc)
      # @memes = @communities_search.map(&:memes)
      # @communities_search.map do |community|
      #   community.memes
      # end.flatten
    elsif filter.present?
      @communities_search = Community.where("name ILIKE ?", "%#{params[:filter]}%")
      @memes = Meme.joins(:challenge).where(challenges: { community_id: @communities_search.pluck(:id) }).order(created_at: :desc)
      # @memes = @communities_search.map do |community|
      #   community.memes
      # end.flatten
    else
      @memes = @user.feed
    end
  end

  def new
    @meme = Meme.new
    @user = current_user
    @challenges = @user.communities.includes(:challenges).flat_map {|community| community.challenges }
  end

  def create
    @meme = Meme.new(meme_params)
    @meme.user = current_user
    @meme.photo.attach(data: params[:photo])
    if @meme.save
      redirect_to memes_path(filter: @meme.challenge.community.name), notice: "Meme was successfully created."
    else
      puts @meme.errors.full_messages
      render :new
    end
  end

  private

  def meme_params
    params.require(:meme).permit(:title, :challenge_id)
  end

  def set_meme
    @meme = Meme.find(params[:id])
  end
end
