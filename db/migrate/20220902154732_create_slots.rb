class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.integer :week_day, null: false, default: 0

      t.timestamps
    end
  end
end
