class OrdersController < ApplicationController
  def order_page
    @orders = Order.all
  end

  def make_order
    @order = Order.new
    #order.expiration = params[:expiration]
    #order.consumer_id = current_user.id
  end
end
