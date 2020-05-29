class Post < ApplicationRecord
  belongs_to :User, optional: true
end