class OrdersController < ApplicationController
  def show
    @order = current_user.orders.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    recipe_sku = Recipe.find(params[:recipe_id]).sku
    amount = Recipe.find(params[:recipe_id]).price_cents
    state = 'pending'
    user = current_user
    all_params = order_params.merge(user: user, recipe: @recipe, recipe_sku: recipe_sku, amount: amount, state: state)
    @order = Order.create!(all_params)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @recipe.sku,
        images: [@recipe.photo_url],
        amount: @recipe.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: recipe_order_url(@recipe.id, @order.id),
      cancel_url: recipe_url(@recipe.id)
    )

    @order.update(checkout_session_id: session.id)
    redirect_to new_recipe_order_payment_path(@recipe.id, @order.id)
  end

  def success
    @order = Order.find(params[:order_id])
    @order.recipe = Recipe.find(@order.recipe_id)
  end

private

  def order_params
    params.require(:order).permit(:street_name, :street_number, :city, :zip_code, :order_date, :order_hour, :photo)
  end

end

