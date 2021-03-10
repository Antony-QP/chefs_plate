class UsersController < ApplicationController

  def update
    current_user.update(user_params)
    current_user.save
  end

private

  def user_params
    params.require(:user).permit(:longitude, :latitude)
  end
end
