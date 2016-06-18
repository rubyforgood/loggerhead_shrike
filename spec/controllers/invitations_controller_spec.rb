require 'rails_helper'

RSpec.describe Users::InvitationsController, type: :controller do
  describe "GET #new" do
    context "improper authorization" do

      let (:admin_params) {
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

      # before {controller.stub(:current_user) { admin }}

      it "redirects to login page" do
        get :new 
        #expect(response).to redirect_to("index")
      end
    end
  end
end
