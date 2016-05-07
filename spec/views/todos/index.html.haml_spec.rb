require 'rails_helper'

RSpec.describe "todos/index", type: :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        :title => "MyText",
        :completed_at => ""
      ),
      Todo.create!(
        :title => "MyText",
        :completed_at => ""
      )
    ])
  end

  it "renders a list of todos" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
