class UsersController < ApplicationController
  before_action :authenticate_user!

  def update
    user = User.find(params[:id])
    if user == current_user
      user.update(user_params)
    end
    redirect_to action: :show
  end

  private
    def user_params
      params.require(:user).permit(:email, :first_name, :last_name)
    end
end
