class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, :user_id, :post_id, presence: true

  def user_email
    User.find(user_id).email
  end
end
