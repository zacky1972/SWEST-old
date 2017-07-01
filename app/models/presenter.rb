class Presenter < ActiveRecord::Base
    validates :name, presence: true
end
