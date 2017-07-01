class AddSessionIdToPresenters < ActiveRecord::Migration
  def change
    add_column :presenters, :session_id, :integer
  end
end
