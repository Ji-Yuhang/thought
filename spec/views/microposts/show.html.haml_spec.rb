require 'rails_helper'

RSpec.describe "microposts/show", type: :view do
  before(:each) do
    @micropost = assign(:micropost, Micropost.create!(
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
