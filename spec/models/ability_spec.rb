require 'rails_helper'
require 'cancan/matchers'

RSpec.describe Ability, type: :model do
  it "can manage users when admin" do
    user = User.new :role => "admin"
    ability = Ability.new(user)
    expect(ability).to be_able_to(:manage, User.new)
  end

  it "cannot manage user when not admin" do
    user = User.new
    ability = Ability.new(user)
    expect(ability).not_to be_able_to(:manage, User.new)
  end

  it "can manage observations when researcher" do
    user = User.new role: "researcher"
    expect(Ability.new(user)).to be_able_to(:manage, Observation.new)
  end

  context "user is scientist" do
    before(:each) { @user = User.new role: "scientist" }
    it "can create observation when scientist" do
      expect(Ability.new(@user)).to be_able_to(:create, Observation.new)
    end

    it "cannot delete, change, or read observation when scientist" do
      expect(Ability.new(@user)).not_to be_able_to(:delete, Observation.new)
      expect(Ability.new(@user)).not_to be_able_to(:change, Observation.new)
      expect(Ability.new(@user)).not_to be_able_to(:read, Observation.new)
    end
  end
end
