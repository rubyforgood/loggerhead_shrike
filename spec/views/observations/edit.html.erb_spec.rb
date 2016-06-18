require 'rails_helper'

RSpec.describe "observations/edit", type: :view do
  before(:each) do
    @observation = assign(:observation, Observation.create!(
      :location => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :num_bands => 1
    ))
  end

  it "renders the edit observation form" do
    render

    assert_select "form[action=?][method=?]", observation_path(@observation), "post" do

      assert_select "input#observation_location[name=?]", "observation[location]"

      assert_select "input#observation_latitude[name=?]", "observation[latitude]"

      assert_select "input#observation_longitude[name=?]", "observation[longitude]"

      assert_select "input#observation_num_bands[name=?]", "observation[num_bands]"
    end
  end


  it 'creates a div due to google maps' do
    render
    assert_select "div.gm-style'"
  end
end
