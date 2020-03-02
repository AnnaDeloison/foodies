class Recipe < ApplicationRecord
  has_many :orders
  has_many :trouble_recipes
  has_many :reviews, dependent: :destroy
end
