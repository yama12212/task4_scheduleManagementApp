class ChangeNotNullToSchedule < ActiveRecord::Migration[6.1]
  def change
    change_column_null :schedules, :title, false
    change_column_null :schedules, :start_day, false
    change_column_null :schedules, :end_day, false
  end
end
