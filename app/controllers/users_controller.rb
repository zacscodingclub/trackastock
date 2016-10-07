class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def my_portfolio
    @user = current_user
    @user_stocks = @user.stocks
  end

  def friends
    @user = current_user
  end
end
