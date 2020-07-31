class Post < ApplicationRecord
  validates :title, :body, presence: true
  belongs_to :user
  has_many :comments
end
