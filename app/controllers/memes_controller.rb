class MemesController < ApplicationController
  before_action :set_meme, only: [:upvote]

  def show
    @meme = Meme.find(params[:id])
    @user = current_user
    @communities = current_user.communities
    @challenge = Challenge.find(params[:id])
  end

  def index
    @user = current_user
    @memes = @user.feed
    @communities = current_user.communities + current_user.approved_community_memberships
    @challenges = Challenge.all
    @commets = Comment.where(meme_id: @memes.ids)
    @comment = Comment.new
    @top_memes = @memes.sort_by { |meme| meme.score }.reverse.first(5)
    @all_memes = @memes.sort_by { |meme| meme.score }.reverse

    @communities_search = @communities
    @commets = Comment.where(meme_id: @memes.ids)
    @comment = Comment.new
    @top_memes = @memes.sort_by { |meme| meme.score }.reverse.first(5)
    @all_memes = @memes.sort_by { |meme| meme.score }.reverse

    if params[:query].present? || params[:filter].present?
      @communities_search = Community.where("name ILIKE ?", "%#{params[:query] || params[:filter]}%")
      @memes = Meme.joins(challenge: {community: :memberships})
                    .where(challenges: { community_id: @communities_search.pluck(:id) }, memberships: {status: "approved"})
                    .or(Meme.joins(challenge: {community: :memberships})
                            .where(challenges: { community_id: @communities_search.pluck(:id) }, communities: { user: current_user }))
                    .order(created_at: :desc)
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
