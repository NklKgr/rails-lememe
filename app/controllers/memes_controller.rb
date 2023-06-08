class MemesController < ApplicationController
  def index
    @user = current_user
    @memes = @user.feed
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
      redirect_to root_path, notice: "Meme was successfully created."
    else
      puts @meme.errors.full_messages
      render :new
    end
  end

  private

  def meme_params
    params.require(:meme).permit(:title, :challenge_id)
  end

  # def decode_and_attach_photo
  #   decoded_file = Base64.decode64(params[:photo]).split(",")[1]
  #   {
  #     io: StringIO.new(decoded_file),
  #     content_type: "image/png",
  #     filename: "meme-#{Time.current.to_i}.png"
  #   }
  # end
end
