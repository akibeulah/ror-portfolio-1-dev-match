class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :plan

  has_one :profile

  has_many :follows

  has_many :follower_relationships, class_name: "Follow", foreign_key: "following_id"
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, class_name: "Follow", foreign_key: "user_id"
  has_many :following, through: :following_relationships, source: :following
  
  attr_accessor :stripe_card_token

  def save_with_payment
    if valid?
      print :stripe_card_token
      customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end
end