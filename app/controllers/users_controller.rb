class UsersController < ApplicationController


  def update_balance
    @user = User.find(params[:user_id])
    @user.update(user_params)
    raise
    redirect_to dashboard_path
  end

  private

  def user_params
    params.require(:user).permit(:balance)
  end
end
