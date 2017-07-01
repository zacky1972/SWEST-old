class AddAvatarToPresenters < ActiveRecord::Migration
  def self.up
    add_attachment :presenters, :avatar
  end

  def self.down
    remove_attachment :presenters, :avatar
  end
end
