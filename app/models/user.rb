class User < ApplicationRecord
    has_many :posts, dependent: :destroy  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable  
  
  validates :username, :email, :password, presence: true
  validates :password, length: { in: 6..20 }
  validates :email, uniqueness: true
end
