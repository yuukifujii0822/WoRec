class Workout < ApplicationRecord
  validates :exercise_id, presence: true
  validates :date, presence: true
  validates :user_id, presence: true
  
  has_many :menus
  belongs_to :user
  belongs_to :exercise
  
  accepts_nested_attributes_for :menus
end
