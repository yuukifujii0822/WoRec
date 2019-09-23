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
    #テーブル結合部分#
    @workouts1 = Workout.joins(:menus).select("workouts.*,menus.*")
    @workouts2 = @workouts1.joins(:exercise).select("exercises.*,workouts.*,menus.*")
    
    
    if params.has_key?(:date)
      diary_date = Date.new params[:date]["{:class=>\"date-select\"}(1i)"].to_i,
                    params[:date]["{:class=>\"date-select\"}(2i)"].to_i,
                    params[:date]["{:class=>\"date-select\"}(3i)"].to_i
    else 
      diary_date = nil
    end
    #日付で検索
    @workout_diary = @workouts2.where(date: diary_date)
    
    
    #二次元配列のロジック
    results = {}
    @workout_diary.each do |workout|
      # ハッシュの初期化
      results[workout.name] = [] if results[workout.name].nil?
      # 下記の << は要素resultsが空だとエラーになるため上記if文が必要
      results[workout.name] << { "set_count" => workout.set_count, "weight" => workout.weight, "rep" => workout.rep, "note" => workout.note }
    end
    
    @results = results
  end


  def chart
    @workouts3 = Workout.joins(:menus).select("workouts.*,menus.*")
    @workouts4 = @workouts3.joins(:exercise).select("exercises.*,workouts.*,menus.*")
    
    @workout_chart = @workouts4.where(exercise_id: params[:exercise_id])
  end


  
  
  private
  def workout_params
    params.require(:workout).permit(:date, :exercise_id, :user_id, menus_attributes: [:set_count, :weight, :rep, :note])
  end
end
