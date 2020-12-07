class AdminController < ApplicationController
  def index
    @name = User.find(session[:user_id]).name
    @total_orders = Order.count
  end
end
