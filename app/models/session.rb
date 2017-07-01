class Session < ActiveRecord::Base
    has_many :presenters
    validates :title, presence: true
end
