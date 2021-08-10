class Room < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_one_attached :image
  
  validates :room_name, presence: true
  validates :room_introduction, presence: true
  validates :price, numericality: true
  validates :adress, presence: true
end
