class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
    @workout.menus.build
  end
  
  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to workouts_new_path, success: 'ワークアウトを記録しました'
    else
      flash.now[:danger] = "ワークアウトの記録に失敗しました"
      render :new
    end
  end
  
  private
  def workout_params
    params.require(:workout).permit(:date, :exercise_id, :user_id, menus_attributes: [:set_count, :weight, :rep, :note])
  end
  
  
  
end
