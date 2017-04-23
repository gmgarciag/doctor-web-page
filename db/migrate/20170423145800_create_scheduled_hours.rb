class CreateScheduledHours < ActiveRecord::Migration[5.0]
  def change
    create_table :scheduled_hours do |t|

      t.timestamps
    end
  end
end
