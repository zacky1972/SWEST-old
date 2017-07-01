class ChangeFromToSlot < ActiveRecord::Migration
  def change
    change_column :slots, :from, :datetime
    change_column :slots, :to, :datetime
  end
end
