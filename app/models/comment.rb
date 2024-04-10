class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def user_email
    User.find(user_id).email
  end
end
