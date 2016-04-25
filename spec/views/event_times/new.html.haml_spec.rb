require 'rails_helper'

RSpec.describe "event_times/new", type: :view do
  before(:each) do
    assign(:event_time, EventTime.new(
      :content => "MyString",
      :time_length => 1
    ))
  end

  it "renders new event_time form" do
    render

    assert_select "form[action=?][method=?]", event_times_path, "post" do

      assert_select "input#event_time_content[name=?]", "event_time[content]"

      assert_select "input#event_time_time_length[name=?]", "event_time[time_length]"
    end
  end
end
