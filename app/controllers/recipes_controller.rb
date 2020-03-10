class RecipesController < ApplicationController
   skip_before_action :authenticate_user!, only: :home, raise: false

   def index
      if params[:name].present?
        @recipes = Recipe.where("name ILIKE ?", "%#{params[:name]}%")
      else
        @recipes = Recipe.all
      end
   end

   def cards
    @recipes = Recipe.joins(:troubles).where('troubles.name = ?', params[:maladie])
    p @recipes.length
    render partial: "cards", locals: { recipes: @recipes }
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
    redirect_back(fallback_location: root_path)
  end
end
