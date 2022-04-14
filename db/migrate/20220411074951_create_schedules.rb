class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :start_day, null: false
      t.datetime :end_day, null: false
      t.boolean :all_day_long

      t.timestamps
    end
  end
end
