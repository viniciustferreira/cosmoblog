class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments
  validates :body, :title, :user_id, presence: true
end
