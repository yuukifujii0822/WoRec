class Workout < ApplicationRecord
  has_many :menus
  belongs_to :user
  belongs_to :exercise
  
  accepts_nested_attributes_for :menus
end
