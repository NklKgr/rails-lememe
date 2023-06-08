class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
    respond_to do |format|
      format.json { head :no_content }
      format.html { render :index } # Render the HTML template for other formats
    end
  end


  def new
    @community = Community.new
    render :new
  end

  def show
    @community = Community.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "Community not found"
    redirect_to communities_path
  end



  def create
    @community = Community.new(community_params)
    if @community.save
      redirect_to @community, notice: 'Community successfully created.'
    else
      render :new
    end
  end

  private

  def community_params
    params.require(:community).permit(:name, :description)
  end
end
