require 'rails_helper'

RSpec.describe "Observations", type: :model do

  let(:valid_attributes) {
    {
      sighted_at:DateTime.new(2016, 5, 10, 10, 30, 0, '-5'),
      location: 'Near my moms house',
      latitude: 38.918167,
      longitude: -78.194445,
      num_bands: 1
    }
  }

  it "can be valid" do
    observation = Observation.new valid_attributes
    expect(observation).to be_valid
  end
end
