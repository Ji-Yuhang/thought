require 'rails_helper'

RSpec.describe "event_times/index", type: :view do
  before(:each) do
    assign(:event_times, [
      EventTime.create!(
        :content => "Content",
        :time_length => 1
      ),
      EventTime.create!(
        :content => "Content",
        :time_length => 1
      )
    ])
  end

  it "renders a list of event_times" do
    render
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
