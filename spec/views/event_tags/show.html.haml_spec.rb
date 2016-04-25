require 'rails_helper'

RSpec.describe "event_tags/show", type: :view do
  before(:each) do
    @event_tag = assign(:event_tag, EventTag.create!(
      :tag_name => "Tag Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tag Name/)
  end
end
