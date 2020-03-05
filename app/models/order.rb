class Order < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :recipes, through: :items
  validates :user_id, :street_number, :street_name, :city, presence: true
  validates :zip_code, :order_date, :order_hour, presence: true
  # validates zip_code :format { with: "/^(?:[0-8]\d|9[0-8])\d{3}$/" }
  # validates :zip_code minimum: 5
  monetize :amount_cents
end
