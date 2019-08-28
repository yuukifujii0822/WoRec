class Menu < ApplicationRecord
  validates :weight, presence: true
  validates :rep, presence: true, numericality: {
             only_integer: true, greater_than: 0 }
  validates :set_count, presence: true, numericality: {
             only_integer: true, greater_than: 0 }
  
  
  belongs_to :workout
end
