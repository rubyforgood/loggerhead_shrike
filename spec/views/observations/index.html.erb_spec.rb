require 'rails_helper'
require 'pry'
RSpec.describe "observations/index", type: :view do
  before(:each) do
    assign(:observations, [
      Observation.create!(
        :location => "Location",
        :sighted_at => DateTime.new(2016, 5, 10, 10, 30, 0, '-5'),
        :latitude => 10.99,
        :longitude => 11.99,
        :num_bands => 0
      ),
      Observation.create!(
        :location => "here",
        :sighted_at => DateTime.new(2014, 5, 10, 10, 40, 0, '-5'),
        :latitude => 12.99,
        :longitude => 13.99,
        :num_bands => 1
      )
    ])
  end

  it "renders a list of observations" do
    render
    assert_select "tr>td.sighted_at_date", :text => "2016-05-10", :count => 1
    assert_select "tr>td.sighted_at_time", :text => "15:30", :count => 1
    assert_select "tr>td.longitude", :text => "11.99".to_s, :count => 1
    assert_select "tr>td.latitude", :text => "10.99".to_s, :count => 1
    assert_select "tr>td.num_bands", :text => "1".to_s, :count => 1
  end
end
