require 'rails_helper'

RSpec.describe "todos/edit", type: :view do
  before(:each) do
    @todo = assign(:todo, Todo.create!(
      :title => "MyText",
      :completed_at => ""
    ))
  end

  it "renders the edit todo form" do
    render

    assert_select "form[action=?][method=?]", todo_path(@todo), "post" do

      assert_select "textarea#todo_title[name=?]", "todo[title]"

      assert_select "input#todo_completed_at[name=?]", "todo[completed_at]"
    end
  end
end
