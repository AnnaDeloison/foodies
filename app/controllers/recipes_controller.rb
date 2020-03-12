class RecipesController < ApplicationController
   skip_before_action :authenticate_user!, only: :home, raise: false

   def index
      session[:cart]
      if params[:name].present?
        @recipes = Recipe.where("name ILIKE ?", "%#{params[:name]}%")
      else
        @recipes = Recipe.all

      end
   end

   def cards
    if params[:maladie] == "Pas de filtre"
      @recipes = Recipe.all
    else
    @recipes = Recipe.joins(:troubles).where('troubles.name = ?', params[:maladie])
    end
    render partial: "cards", locals: { recipes: @recipes }
   end

  def show
    @recipe = Recipe.find(params[:id])

  end

  def add_cart
    @recipe = Recipe.find(params[:id])
    session[:cart] << @recipe
    @cart = 0
    @badge = 0
    unless session[:cart].blank?
      session[:cart].each do |element|
        @cart += element["price_cents"]
        @badge += 1
      end
    end
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
