class AdminController < ApplicationController
  def index
    @name = User.find_by(id: session[:user_id]).name
    @total_orders = Order.count
  end
end
