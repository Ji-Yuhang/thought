require 'rails_helper'

RSpec.describe "event_types/index", type: :view do
  before(:each) do
    assign(:event_types, [
      EventType.create!(
        :type_name => "Type Name"
      ),
      EventType.create!(
        :type_name => "Type Name"
      )
    ])
  end

  it "renders a list of event_types" do
    render
    assert_select "tr>td", :text => "Type Name".to_s, :count => 2
  end
end
