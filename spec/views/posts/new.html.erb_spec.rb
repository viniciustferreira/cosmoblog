require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  let(:user) do
    User.create(email: "teste@email.com", password: "123456")
  end

  let(:new_post) do
    Post.create!(user_id: user.id, title: 'teste', body: 'teste')
  end


  it "renders new post form" do
    render 

    assert_select "form[action=new][method=post]", posts_path, "post" do |element|
      puts element
    end
  end
end
