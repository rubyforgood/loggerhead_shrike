require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "Admin users should GET index access" do
    let(:admin_params) {
      {
        email:                 "admin@gmail.com",
        name:                  "Mr Admin",
        role:                  "admin",
        password:              "password",
        password_confirmation: "password"
      }
    }

    let(:admin) {
      User.create!(admin_params)
    }

    before {
      allow(controller).to receive(:current_user).and_return(admin)
    }

    it "admin users have access to user index" do
      get :index, params: {}
      expect(response.status).to eq(200)
    end
  end

  describe "NonAdmin users should not GET index access" do

    let(:nonadmin_params) {
      {
        email:                 "nonadmin@gmail.com",
        name:                  "Mr User",
        role:                  "scientist",
        password:              "password",
        password_confirmation: "password"
      }
    }

    let(:nonadmin) {
      User.create!(nonadmin_params)
    }

    before {
      allow(controller).to receive(:current_user).and_return(nonadmin)
    }

    it "nonadmin users should not have access to user index" do
      get :index, params: {}
      expect(response.status).to eq(302)
    end
  end
end
