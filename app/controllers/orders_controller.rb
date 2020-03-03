class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.recipe = Recipe.find(params[:recipe_id])

      if @order.save
        redirect_to success_path(@order)
      else
        p "mistake"
      end
  end

  def success
    @order = Order.find(params[:order_id])
    @order.recipe = Recipe.find(@order.recipe_id)
  end

private

  def order_params
    params.require(:order).permit(:street_name, :street_number, :city, :zip_code, :order_date, :order_hour, :photo)
  end

  def booking_params
    params.require(:booking).permit(:booking_date, :user_id, :barrow_id)
  end

end

