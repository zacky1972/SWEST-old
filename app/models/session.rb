class Session < ActiveRecord::Base
    has_many :SessionPresenter, foreign_key: 'Session_id'
    has_many :Presenter, through: :SessionPresenter
end
