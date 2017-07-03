class Presenter < ActiveRecord::Base
    has_many :SessionPresenter, foreign_key: 'Presenter_id'
    has_many :Session, through: :SessionPresenter
    validates :name, presence: true
    validates :affiliation, presence: true
    has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "100x100>" }, :default_url => "empty.jpg"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
