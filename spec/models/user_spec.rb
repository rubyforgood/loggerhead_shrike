require 'rails_helper'

RSpec.describe User, type: :model do
  it 'can be valid' do
    user = User.new(
      email:                 'spacejame@gmail.com',
      name:                  'Michael Jordan',
      role:                  'admin',
      password:              'password',
      password_confirmation: 'password'
    )
    expect(user).to be_valid
  end

  it 'can be an admin' do
    user = User.new(
      email:                 'spacejame@gmail.com',
      name:                  'Michael Jordan',
      role:                  'admin',
      password:              'password',
      password_confirmation: 'password'
    )
    expect(user.is_admin?).to be(true)
  end
end
