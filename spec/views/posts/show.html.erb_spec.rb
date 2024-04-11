require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  let(:user) do
    User.create(email: "teste@email.com", password: "123456")
  end

  let(:new_post) do
    Post.create!(user_id: user.id, title: 'teste', body: 'teste')
  end

  it "renders attributes in <p>" do
    render new_post

    assert_select "p", post_path(new_post), "get" do |element|
      puts element
    end
  end
end
