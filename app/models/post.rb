class Post < ApplicationRecord
  belongs_to :user

  validates :author, :body, presence: true
end
