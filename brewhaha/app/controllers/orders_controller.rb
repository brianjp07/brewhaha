class OrdersController < ApplicationController
  def order_page
    @orders = Order.all
  end

  def make_order
    @order = Order.new
    @order.quantity = params
  end
end
