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
      expect(a_user.paranoia_destroyed?).to eq(true)
    end

    it "can be restored" do
      a_user.restore
      expect(a_user.paranoia_destroyed?).to eq(false)
    end

    it "can be REALLY destroyed" do
      a_user.really_destroy!
      expect(a_user.destroyed?).to eq(true)

    end

  end
end
