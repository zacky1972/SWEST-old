class Presenter < ActiveRecord::Base
    validates :name, presence: true
<<<<<<< HEAD
=======
    validates :affiliation, presence: true
<<<<<<< HEAD
>>>>>>> bcdc9e0... add presenter
=======
    has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "100x100>" }, :default_url => "empty.jpg"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
>>>>>>> 8d43691... add Paperclip & avatar
end
