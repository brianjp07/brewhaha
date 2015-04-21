class OrdersController < ApplicationController
  def order_page
    @orders = Order.all
  end
  def make_order
    @order = Order.new
  end
  def order_params
     params.require(:order).permit(:username, :email, :password, :password_confirmation)
   end
end
