require 'rails_helper'

RSpec.describe "event_types/show", type: :view do
  before(:each) do
    @event_type = assign(:event_type, EventType.create!(
      :type_name => "Type Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type Name/)
  end
end
