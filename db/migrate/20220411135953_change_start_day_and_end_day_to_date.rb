class ChangeStartDayAndEndDayToDate < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :start_day, :date
    change_column :schedules, :end_day, :date
  end

  def down
    change_column :schedules, :start_day, :datetime
    change_column :schedules, :end_day, :datetime
  end
end
