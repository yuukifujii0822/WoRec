class Exercise < ApplicationRecord
  has_many :workouts
  belongs_to :body
end
