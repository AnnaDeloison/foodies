class Trouble < ApplicationRecord
  has_many :trouble_recipes
  has_many :recipes, through: :trouble_recipes
end
