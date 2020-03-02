class TroubleRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :trouble
end
