class RecipesController < ApplicationController
   skip_before_action :authenticate_user!, only: :home, raise: false

   def index
    @recipes = Recipe.all
   end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def add_cart
    @recipe = Recipe.find(params[:id])
    session[:cart] << @recipe
    redirect_to recipe_path(@recipe)
  end

  def show_cart
    session[:cart]
  end

  def destroy_cart
    @recipe_to_destroy = session[:cart].select { |n| n["id"] == params["id"].to_i }
    session[:cart].reject! { |e| e["id"] == @recipe_to_destroy[0]["id"] }
    redirect_to show_cart_path
  end
end
