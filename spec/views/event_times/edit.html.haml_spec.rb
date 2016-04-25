require 'rails_helper'

RSpec.describe "event_times/edit", type: :view do
  before(:each) do
    @event_time = assign(:event_time, EventTime.create!(
      :content => "MyString",
      :time_length => 1
    ))
  end

  it "renders the edit event_time form" do
    render

    assert_select "form[action=?][method=?]", event_time_path(@event_time), "post" do

      assert_select "input#event_time_content[name=?]", "event_time[content]"

      assert_select "input#event_time_time_length[name=?]", "event_time[time_length]"
    end
  end
end
