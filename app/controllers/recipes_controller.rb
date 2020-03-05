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
  end

  def show_cart
    session[:cart]
  end
end
