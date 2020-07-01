class Post < ApplicationRecord
  include PgSearch::Model
  belongs_to :User, optional: true
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :shares, dependent: :destroy
  has_many :dislikes, dependent: :destroy
  
  acts_as_commontable dependent: :destroy

  pg_search_scope :search, against: [:title, :subtitle, :body], using: { tsearch: { dictionary: 'english' } }
end