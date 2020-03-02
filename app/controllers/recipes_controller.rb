class RecipesController < ApplicationController
   skip_before_action :authenticate_user!, only: :home, raise: false

   def index
    @recipes = Recipe.all
   end
end
