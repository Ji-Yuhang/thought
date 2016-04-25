require 'rails_helper'

RSpec.describe "event_times/show", type: :view do
  before(:each) do
    @event_time = assign(:event_time, EventTime.create!(
      :content => "Content",
      :time_length => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/1/)
  end
end
