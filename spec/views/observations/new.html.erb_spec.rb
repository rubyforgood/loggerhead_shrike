require 'rails_helper'

RSpec.describe 'observations/new', type: :view do
  before(:each) do
    assign(:observation, Observation.new(
                           location: 'MyString',
                           latitude: '9.99',
                           longitude: '9.99',
                           num_bands: 1
    ))
  end

  it 'renders new observation form' do
    render

    assert_select 'form[action=?][method=?]', observations_path, 'post' do
      assert_select 'input#observation_location[name=?]', 'observation[location]'

      assert_select 'input#observation_latitude[name=?]', 'observation[latitude]'

      assert_select 'input#observation_longitude[name=?]', 'observation[longitude]'

      assert_select 'input#observation_num_bands[name=?]', 'observation[num_bands]'
    end
  end
end
