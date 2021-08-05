class Room < ApplicationRecord
  validates :room_name, presence: true
  validates :room_introduction, presence: true
  validates :price, numericality: true
  validates :adress, presence: true
end
