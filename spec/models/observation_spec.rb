require 'rails_helper'

RSpec.describe Observation, type: :model do
  
  it "can be valid" do
    observation = Observation.new(
      location: "Location",
      latitude: 10.99,
      longitude: 11.99,
      num_bands: 0
    )
    expect(observation).to be_valid
  end

  it "should have num bands greater than 0" do
    observation = Observation.new(
      location: "Location",
      latitude: 10.99,
      longitude: 11.99,
      num_bands: -1
    )
    expect(observation).to_not be_valid
  end

  it "should have num bands less than 3" do
    observation = Observation.new(
      location: "Location",
      latitude: 10.99,
      longitude: 11.99,
      num_bands: 3
    )
    expect(observation).to_not be_valid
  end
end
