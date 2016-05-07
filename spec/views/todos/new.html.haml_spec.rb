require 'rails_helper'

RSpec.describe "todos/new", type: :view do
  before(:each) do
    assign(:todo, Todo.new(
      :title => "MyText",
      :completed_at => ""
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "textarea#todo_title[name=?]", "todo[title]"

      assert_select "input#todo_completed_at[name=?]", "todo[completed_at]"
    end
  end
end
