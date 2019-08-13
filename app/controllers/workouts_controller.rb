class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
    @menu = Menu.new
  end
  
  def create
    @workout = Workout.new(workout_params)
    @workout.user_id = current_user.id
    
    if @workout.save
      redirect_to workouts_new_path, success: 'ワークアウトを記録しました'
    else
      flash.now[:danger] = "ワークアウトの記録に失敗しました"
      render :new
    end
  end
  
  private
  def workout_params
    params.require(:workout).permit(:date, :exercise_id, menus_attributes: [:set_count, :weight, :rep, :note])
  end
  
  
  
end
