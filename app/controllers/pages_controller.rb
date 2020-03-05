class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home, raise: false

  def home
  end

  def chimiotherapie
  end

  def digestion
  end

  def deglutition
  end

end
