require 'spec_helper'
require_relative '../../lib/map_api'

describe MapApi do
  it 'can geolocate' do
    result = MapApi.geolocate("334 Blackwell St")
    expect(result[:latitude]).to eq(35.99304350000001)
    expect(result[:longitude]).to eq(-78.9046031)
  end
end
