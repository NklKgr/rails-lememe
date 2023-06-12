class UsersController < ApplicationController
  def user
    User.find(user_id)
  end
end
