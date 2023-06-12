class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def after_sign_in_path_for
    redirect_to(memes_path)
  end
end
