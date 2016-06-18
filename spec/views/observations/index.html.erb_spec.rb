require 'rails_helper'

RSpec.describe "observations/index", type: :view do
  before(:each) do
    assign(:observations, [
      Observation.create!(
        :location => "Location",
        :latitude => 10.99,
        :longitude => 11.99,
        :num_bands => 0
      ),
      Observation.create!(
        :location => "Location Here",
        :latitude => 12.99,
        :longitude => 13.99,
        :num_bands => 1
      )
    ])
  end

  it "renders a list of observations" do
    render
    assert_select "tr>td.location", :text => "Location".to_s, :count => 1
    assert_select "tr>td.longitude", :text => "11.99".to_s, :count => 1
    assert_select "tr>td.latitude", :text => "10.99".to_s, :count => 1
    assert_select "tr>td.num_bands", :text => "1".to_s, :count => 1
  end
end
