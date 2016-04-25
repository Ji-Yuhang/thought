require 'rails_helper'

RSpec.describe "event_tags/edit", type: :view do
  before(:each) do
    @event_tag = assign(:event_tag, EventTag.create!(
      :tag_name => "MyString"
    ))
  end

  it "renders the edit event_tag form" do
    render

    assert_select "form[action=?][method=?]", event_tag_path(@event_tag), "post" do

      assert_select "input#event_tag_tag_name[name=?]", "event_tag[tag_name]"
    end
  end
end
