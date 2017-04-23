class CreateRestrictedDates < ActiveRecord::Migration[5.0]
  def change
    create_table :restricted_dates do |t|

      t.timestamps
    end
  end
end
