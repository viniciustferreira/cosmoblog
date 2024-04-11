require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  let(:user) do
    User.create(email: "teste@email.com", password: "123456")
  end

  let(:new_post) do
    Post.create!(user_id: user.id, title: 'teste', body: 'teste')
  end

  let(:comment) {
    Comment.create!(post_id: new_post.id, user_id: user.id, body: "teste")
  }

  it "renders the edit comment form" do
    render comment

    expect(rendered).to match(/teste@email.com/)
  end
end
