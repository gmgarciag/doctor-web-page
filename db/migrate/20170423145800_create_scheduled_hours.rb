class CreateScheduledHours < ActiveRecord::Migration[5.0]
  def change
    create_table :scheduled_hours do |t|
    	t.date :date
    	t.belongs_to :available_date
    	t.belongs_to :user
      t.timestamps
    end
  end
end
