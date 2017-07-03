class CreateSessionPresenters < ActiveRecord::Migration
  def change
    create_table :session_presenters do |t|
      t.references :Session
      t.references :Presenter

      t.timestamps null: false
    end
  end
end
