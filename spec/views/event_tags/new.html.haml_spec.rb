require 'rails_helper'

RSpec.describe "event_tags/new", type: :view do
  before(:each) do
    assign(:event_tag, EventTag.new(
      :tag_name => "MyString"
    ))
  end

  it "renders new event_tag form" do
    render

    assert_select "form[action=?][method=?]", event_tags_path, "post" do

      assert_select "input#event_tag_tag_name[name=?]", "event_tag[tag_name]"
    end
  end
end
