class ExercisesController < ApplicationController
  
  def new
    @exercise = Exercise.new
    @exercises = Exercise.all
  end
  
  def create
    @exercise = Exercise.new(exercise_params)
    
    if @exercise.save
      redirect_to pages_mypage_path, success: '新しい種目を追加しました'
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
