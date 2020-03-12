class UsersController < ApplicationController
  def show
    @user = current_user
    if params[:provenance] == "stripe"
      session[:cart] = []
    end
  end
end
