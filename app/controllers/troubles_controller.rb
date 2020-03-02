class TroublesController < ApplicationController
  def show
    @trouble = Trouble.find(params[:id])
    @recipes = @trouble.recipes
  end
end
