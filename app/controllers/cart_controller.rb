class CartController < ApplicationController
  def cart_page
  end
  def cart_payment
    order = Order.where(id: params[:order_id]).first
    order.status = "fulfilled"
    order.save
  end
end
