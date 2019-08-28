class Exercise < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :body_id, presence: true
  
  has_many :workouts
  belongs_to :body
end
