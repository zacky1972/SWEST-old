class Presenter < ActiveRecord::Base
    validates :name, presence: true
    validates :affiliation, presence: true
    has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "100x100>" }, :default_url => "empty.jpg"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
