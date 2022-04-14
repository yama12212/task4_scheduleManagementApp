class SchedulesController < ApplicationController
  def index
    @sches = Schedule.all
  end

  def new
    @sches = Schedule.new
  end

  def create
    @sches = Schedule.new(schedule_params)
    if @sches.save
      flash[:notice] = "スケジュール「#{@sches.title}」を登録しました"
      redirect_to(schedules_url)
    else
      flash.now[:failed] = "スケジュールを登録できませんでした"
      render "new"
    end
  end

  def show
    @sches = Schedule.find(params[:id])
  end

  def edit
    @sches = Schedule.find(params[:id])
  end

  def update
    @sches = Schedule.find(params[:id])
    if @sches.update(schedule_params)
      flash[:notice] = "スケジュール「#{@sches.title}」を編集しました"
      redirect_to(schedule_url(@sches.id))
    else
      flash.now[:failed] = "スケジュールの編集に失敗しました"
      render "edit"
    end
  end

  def destroy
    @sches = Schedule.find(params[:id])
    @sches.destroy
    flash[:notice] = "スケジュール「#{@sches.title}」を削除しました"
    redirect_to(schedules_url)
  end

  private

  def schedule_params
    params.require(:schedule).permit(:title, :start_day, :end_day, :all_day_long, :description)
  end
end
