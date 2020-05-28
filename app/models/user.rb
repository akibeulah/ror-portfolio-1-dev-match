class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :plan

  has_one :profile

  has_many :follower_relationships, class_name: "Follow", foreign_key: "following_id"
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, class_name: "Follow", foreign_key: "user_id"
  has_many :following, through: :following_relationships, source: :following
  
  attr_accessor :stripe_card_token

  def follow(user_id)
    following_relationships.create(following_id: user_id)
    follow_update(user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
    follow_update(user_id)
  end

  def follow_update(user_id)
    u = User.find_by(id: user_id)
    u.followers_count = u.followers.length
    u.save! 
    u.followings_count = u.following.length
    u.save!
  end

  def is_following?(user_id)
    relationship = Follow.find_by(user_id: id, following_id: user_id)
    return true if relationship 
  end

  def save_with_payment
    if valid?
      print :stripe_card_token
      customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end
end