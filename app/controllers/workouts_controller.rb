class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
  end
  
  def create
  end
  
end
