require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  let(:user) do
    User.create(email: "teste@email.com", password: "123456")
  end

  let(:new_post) do
    Post.create!(user_id: user.id, title: 'teste', body: 'teste')
  end

  it "renders the edit post form" do
    render new_post

    expect(rendered).to match(/teste/)
  end
end
