class Post < ApplicationRecord
  belongs_to :User, optional: true
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :shares, dependent: :destroy
  has_many :dislikes, dependent: :destroy
  
  acts_as_commontable dependent: :destroy
end