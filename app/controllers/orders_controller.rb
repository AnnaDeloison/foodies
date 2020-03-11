class OrdersController < ApplicationController
  def show
    @order = current_user.orders.find(params[:id])
  end

  def new
    @order = Order.new
  end


  def create
    # @recipe = Recipe.find(params[:recipe_id])
    # recipe_sku = Recipe.find(params[:recipe_id]).sku
    # amount = Recipe.find(params[:recipe_id]).price_cents
      state = 'pending'
      user = current_user
      all_params = order_params.merge(user: user, state: state)
      @order = Order.new(all_params)

      if @order.save
        session[:cart].each do |element|
          Item.create!(recipe_id: element["id"], order_id: @order.id)
        end
        line_items = @order.recipes.map do |recipe|
      {
        name: recipe.sku,
        images: [recipe.photo_url],
        amount: recipe.price_cents,
        currency: 'eur',
        quantity: 1
      }
    end

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: line_items,
      success_url: success_url(@order.id),
      cancel_url: show_cart_url
    )


    @order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(@order.id)

      else
        render :new
      end


    # cart.each ... Item.create

    # session[:cart] = nil

      end

  def success
    @order = Order.find(params[:order_id])
    session[:cart] = nil
  end

private

  def order_params
    params.require(:order).permit(:street_name, :street_number, :city, :zip_code, :order_date, :order_hour, :photo)
  end

end

