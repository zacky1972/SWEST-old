class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.string :name
      t.string :room
      t.time :from
      t.time :to

      t.timestamps null: false
    end
  end
end
