class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :chefs, through: :followers
  has_many :chef_ratings
  has_many :bookings
  has_many :received_bookings, through: :bookings
  has_many :post_likes
  has_many :menu_likes
  has_one_attached :avatar
end
