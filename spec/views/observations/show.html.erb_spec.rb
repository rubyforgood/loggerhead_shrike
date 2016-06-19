require 'rails_helper'

RSpec.describe "observations/show", type: :view do
  before(:each) do
    @observation = assign(:observation, Observation.create!(
      :location => "Location",
      :latitude => "9.99",
      :longitude => "9.99",
      :num_bands => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end

  it 'creates a div due to google maps' do
    render
    assert_select "div.gm-style'"
  end
end
