class Slot < ActiveRecord::Base
    validates :name, presence: true
end
