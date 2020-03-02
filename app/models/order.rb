class Order < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :user_id, :recipe_id, :street_number, :street_name, :city, presence: true
  validates :zip_code, :order_date, :order_hour, presence: true
  validates zip_code :format { with: /^0[1-9]|[1-8][0-9]|9[0-8]|2A|2B[0-9]{3}$/ }
  validates zip_code minimum: 5, too_short: 'please enter at least 5 characters'
end
