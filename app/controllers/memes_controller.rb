class MemesController < ApplicationController
  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      redirect_to @meme
    else
      render 'new'
    end
  end

  private

  def meme_params
    params.require(:meme).permit(:title, :image)
  end
end
