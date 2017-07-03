class SessionPresenter < ActiveRecord::Base
    belongs_to :Session
    belongs_to :Presenter
end
