class WorkoutsController < ApplicationController
  
  def index
    @bodies = Body.all
    @exercises = Exercise.all
    @workouts = Workout.all
    @menus = Menu.all
  end
  
  def new
    @workout = Workout.new
    @workout.menus.build
  end
  
  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to new_workouts_path, success: 'ワークアウトを記録しました'
    else
      flash.now[:danger] = "ワークアウトの記録に失敗しました"
      render :new
    end
  end
  
  
  def diary
    @workouts = Workout.joins(:menus).select("workouts.*,menus.*")
    @workouts = @workouts.joins(:exercise).select("exercises.*,workouts.*,menus.*")
  end
  
  
  private
  def workout_params
    params.require(:workout).permit(:date, :exercise_id, :user_id, menus_attributes: [:set_count, :weight, :rep, :note])
  end
  
  
  
end
