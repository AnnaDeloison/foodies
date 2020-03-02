class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(street_name: params[:street_name], street_number: params[:street_number], city: params[:city], zip_code: params[:zip_code], order_date: params[:order_date], order_hour: params[:order_hour])
    @order.user = current_user
    @order.recipe = Recipe.find(params[:recipe_id])

      if @order.save
        redirect_to success_path(@order)
      else
        render :new
      end
  end

  def success
    @order = Order.find(params[:id])
    @order.recipe = Recipe.find(@order.recipe_id)
  end

end
