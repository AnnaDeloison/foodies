class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :scans
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :street_name, presence: true
  validates :street_number, presence: true
  validates :zip_code, presence: true
  # france_postal_code = /^(?:[0-8]\d|9[0-8])\d{3}$/
  # validates :zip_code, format: { with: france_postal_code }
  validates :city, presence: true
  validates :phone_number, presence: true, uniqueness: true
  
end

