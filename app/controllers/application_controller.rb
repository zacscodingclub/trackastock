class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def most_popular_stocks
    UserStock.group(:stock_id).order('count_id DESC').limit(5).count(:id)
  end
end
