class RemoveSessionIdFromPresenter < ActiveRecord::Migration
  def change
    remove_column :presenters, :session_id, :integer
  end
end
