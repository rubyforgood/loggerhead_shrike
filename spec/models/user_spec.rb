require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.new(
      email:                 "spacejam@gmail.com",
      name:                  "Michael Jordan",
      role:                  "admin",
      password:              "password",
      password_confirmation: "password"
    )
  end

  it "can be valid" do
    expect(user).to be_valid
  end

  it "can be an admin" do
    expect(user.is_admin?).to be(true)
  end

  describe "#destroy" do
    let(:a_user) do
      User.new(
        email:                 "test@gmail.com",
        name:                  "Michael Jordan",
        role:                  "researcher",
        password:              "password",
        password_confirmation: "password"
      )
    end

    before do
      a_user.save
    end

    it "can be destroyed" do
      a_user.destroy
      expect(User.without_deleted).to be_empty
      expect(User.only_deleted).not_to be_empty
    end

  end
end
