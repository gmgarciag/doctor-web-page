class CreateRestrictedSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :restricted_schedules do |t|
    	t.date :date
    	t.belongs_to :available_dates
      t.timestamps
    end
  end
end
