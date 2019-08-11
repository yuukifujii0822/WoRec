class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end
  
  def create
    @exerise = Exercise.new(exercise_params)
  end
  
  
  
  private
  def exercise_params
    params.require(:exercise).permit(:body_region, :exercise)
  end
  
end
