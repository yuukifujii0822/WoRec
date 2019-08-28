class ExercisesController < ApplicationController
  
  def index
    @bodies = Body.all.order("id")
    @exercises = Exercise.all.order("body_id")
  end
  
  def new
    @exercise = Exercise.new
  end
  
  def create
    @exercise = Exercise.new(exercise_params)
    
    if @exercise.save
      redirect_to "/exercises/index", success: '新しい種目を追加しました'
    else
      @exercises = Exercise.all
      flash.now[:danger] = "種目の追加に失敗しました"
      render :new
    end
  end
  
  def destroy
    @exercise = Exercise.find_by(name: params[:name])
  end
  
  
  private
  def exercise_params
    params.require(:exercise).permit(:body_id, :name)
  end
  
end
