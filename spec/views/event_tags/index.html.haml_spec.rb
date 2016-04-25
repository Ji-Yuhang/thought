require 'rails_helper'

RSpec.describe "event_tags/index", type: :view do
  before(:each) do
    assign(:event_tags, [
      EventTag.create!(
        :tag_name => "Tag Name"
      ),
      EventTag.create!(
        :tag_name => "Tag Name"
      )
    ])
  end

  it "renders a list of event_tags" do
    render
    assert_select "tr>td", :text => "Tag Name".to_s, :count => 2
  end
end
