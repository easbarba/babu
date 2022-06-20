require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  def setup
    @user = User.create! name: 'Example User', email: 'user@example.com',
                         password: '1234512345', password_confirmation: '1234512345'
    @user.create_profile! name: @user.name, bio: "Job #{rand(1..5)}"

    @profile = @user.profile
  end

  test 'user has profile' do
    assert_equal @profile.name, @user.name
  end
end
