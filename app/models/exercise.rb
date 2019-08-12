class Exercise < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  has_many :workouts
  belongs_to :body
end
