class CreatePresenters < ActiveRecord::Migration
  def change
    create_table :presenters do |t|
      t.string :name
      t.text :affiliation

      t.timestamps null: false
    end
  end
end
