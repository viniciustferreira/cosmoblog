require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  let(:user) do
    User.create(email: "teste@email.com", password: "123456")
  end

  before(:each) do
    assign(:posts, [
      Post.create!(user_id: user.id, title: 'teste 1', body: 'teste 1'),
      Post.create!(user_id: user.id, title: 'teste 2', body: 'teste 2')
    ])
  end

  it "renders a list of posts" do
    render

    expect(rendered).to match(/teste 1/)
    expect(rendered).to match(/teste 2/)
  end
end
