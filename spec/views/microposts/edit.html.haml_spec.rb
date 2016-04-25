require 'rails_helper'

RSpec.describe "microposts/edit", type: :view do
  before(:each) do
    @micropost = assign(:micropost, Micropost.create!(
      :content => "MyText"
    ))
  end

  it "renders the edit micropost form" do
    render

    assert_select "form[action=?][method=?]", micropost_path(@micropost), "post" do

      assert_select "textarea#micropost_content[name=?]", "micropost[content]"
    end
  end
end
