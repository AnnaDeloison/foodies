class Recipe < ApplicationRecord

  has_many :items, dependent: :destroy
  has_many :orders
  has_many :trouble_recipes
  has_many :troubles, through: :trouble_recipes
  has_many :reviews, dependent: :destroy
  monetize :price_cents
end
