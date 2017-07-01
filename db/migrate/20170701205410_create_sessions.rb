class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :slot_id
      t.text :title
      t.text :abstract
      t.text :introduction

      t.timestamps null: false
    end
  end
end
