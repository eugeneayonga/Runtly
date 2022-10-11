class CreateRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :runs do |t|
      t.date :date
      t.float :distance
      t.float :total_time
      t.integer :calories
      t.integer :elevation
      t.integer :average_heartrate
      t.float :average_pace
      t.float :fastest_split
      t.boolean :favorite
      t.integer :user_id

      t.timestamps
    end
  end
end
