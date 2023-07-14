class User < ApplicationRecord
  has_many :posts, dependent: :destroy  
  
  validates :username, :email, :password, presence: true
  validates :password, length: { in: 6..20 }
  validates :email, uniqueness: true
end
