require 'rails_helper'

RSpec.describe "event_types/new", type: :view do
  before(:each) do
    assign(:event_type, EventType.new(
      :type_name => "MyString"
    ))
  end

  it "renders new event_type form" do
    render

    assert_select "form[action=?][method=?]", event_types_path, "post" do

      assert_select "input#event_type_type_name[name=?]", "event_type[type_name]"
    end
  end
end
