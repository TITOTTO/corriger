class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :my_articles, foreign_key: 'seller_id', class_name: "Article"
  has_many :my_purchases, foreign_key: 'buyer_id', class_name: "Article"
  has_many :carts
  has_many :comments


  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
end
