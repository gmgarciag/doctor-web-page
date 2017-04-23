class CreateRestrictedSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :restricted_schedules do |t|

      t.timestamps
    end
  end
end
