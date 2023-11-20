class User < ApplicationRecord
  has_one :cart
  has_many :tickets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum :role, ['admin', 'customer'], default: 'customer'

  after_create :create_cart_for_user

  def admin?
    role == 'admin'
  end

  private 
  
  def create_cart_for_user
    Cart.create(user: self)
  end
end
