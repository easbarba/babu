require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do
    @user = User.create! name: 'Example User', email: 'user@example.com',
                         password: '1234512345', password_confirmation: '1234512345'
    @post = @user.posts.create! title: "Estoria #{rand(1..101)}",
                                body: 'MMMmmmmmmmmmmmmmmmmmmmm'
  end

  test 'post is valid' do
    @post.valid?
  end
end
