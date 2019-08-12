class ExercisesController < ApplicationController
  
  def new
    @exercise = Exercise.new
    @exercises1 = Exercise.where(body_id: 1)
    @exercises2 = Exercise.where(body_id: 2)
    @exercises3 = Exercise.where(body_id: 3)
    @exercises4 = Exercise.where(body_id: 4)
    @exercises5 = Exercise.where(body_id: 5)
    @exercises6 = Exercise.where(body_id: 6)
    @exercises7 = Exercise.where(body_id: 7)
    @exercises8 = Exercise.where(body_id: 8)
  end
  
  def create
    @exercise = Exercise.new(exercise_params)
    
    if @exercise.save
      redirect_to new_exercises_path, success: '新しい種目を追加しました'
    else
      flash.now[:danger] = "種目の追加に失敗しました"
      render :new
    end
  end
  
  
  
  private
  def exercise_params
    params.require(:exercise).permit(:body_id, :name)
  end
  
end
