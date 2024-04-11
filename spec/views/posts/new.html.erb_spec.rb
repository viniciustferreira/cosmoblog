require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  let(:user) do
    User.create(email: "teste@email.com", password: "123456")
  end

  let(:new_post) do
    Post.new
  end

  it "renders new post form" do
    render new_post

    expect(rendered).to match(/Text/)
  end
end
