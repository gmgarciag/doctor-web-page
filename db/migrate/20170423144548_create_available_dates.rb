class CreateAvailableDates < ActiveRecord::Migration[5.0]
  def change
    create_table :available_dates do |t|
      t.string :day
      t.integer :hour
      t.integer :minute

      t.timestamps
    end
  end
end
