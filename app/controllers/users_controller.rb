class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def my_portfolio
    @user = current_user
    @user_stocks = @user.stocks
  end

  def friends
    @friends = current_user.friends
  end

  def add_friend

  end

  def search
    @users = User.search(params[:search_param])

    if @users
      @users = current_user.except_current_user(@users)
      render partial: 'friends/lookup'
    else
      render status: :not_found, nothing: true
    end
  end
end
