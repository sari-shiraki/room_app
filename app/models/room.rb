class Room < ApplicationRecord
  belongs_to :account  
  validates :room_name, presence: true
  validates :room_introduction, presence: true
  validates :price, numericality: true
  validates :adress, presence: true
end
