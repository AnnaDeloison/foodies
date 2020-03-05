class TroublesController < ApplicationController
  def show
    @trouble = Trouble.find(params[:id])
  end

end
