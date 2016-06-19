require 'rails_helper'

RSpec.describe "Observations", type: :request do
  describe "GET /observations" do
    it "can get list" do
      get observations_path
      expect(response).to have_http_status(302)
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
