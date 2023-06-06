class MemesController < ApplicationController
  def index
    @user = current_user
    @memes = @user.feed
  end
end
