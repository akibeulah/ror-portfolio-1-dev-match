class Profile < ActiveRecord::Base
  include PgSearch::Model
  
  pg_search_scope :search, against: [:first_name, :middle_name, :contact_email, :last_name, :phone_number]

  belongs_to :user
    
    has_attached_file :avatar, :styles => {
            :medium => "250*250",
            :thumb => "100*100"
    }, :default_url => "user_default.jpg"

    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end