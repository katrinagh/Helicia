class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :articles, through: :orders

  geocoded_by :delivery_address
  after_validation :geocode, if: :will_save_change_to_delivery_address?
end
