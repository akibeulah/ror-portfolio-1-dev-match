class Profile < ActiveRecord::Base
  belongs_to :user
    
    has_attached_file :avatar, :styles => {
            :medium => "2500*250",
            :thumb => "100*100"
    }, :default_url => "user_default.jpg"

    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end