require 'rails_helper'

RSpec.describe "Observations", type: :request do

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
  before(:each) do
  end
  describe "GET /observations" do
    it "can get list" do
      sign_in admin  
      get observations_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /observations" do
    it "should create observation" do
      post "/observations", params: {observation: {sighted_at: DateTime.new(2016, 5, 10, 10, 30, 0, '-5'), location: "somewhere", latitude: 40.00, longitude: -78.00, num_bands: 1}}
      expect(response.code).to eql('302')
      expect(response).to redirect_to(assigns(:observation))
    end
  end

  #TODO: DELETE and PUT tests
  #TODO: Test authorization
end
