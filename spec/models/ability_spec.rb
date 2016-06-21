require 'rails_helper'
require 'cancan/matchers'

RSpec.describe Ability, type: :model do
  it 'can manage users when admin' do
    user = User.new role: 'admin'
    ability = Ability.new(user)
    expect(ability).to be_able_to(:manage, User.new)
  end

  it 'cannot manage user when not admin' do
    user = User.new
    ability = Ability.new(user)
    expect(ability).not_to be_able_to(:manage, User.new)
  end
end
