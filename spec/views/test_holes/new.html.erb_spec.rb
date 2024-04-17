require 'rails_helper'

RSpec.describe "test_holes/new", type: :view do
  before(:each) do
    assign(:test_hole, TestHole.new())
  end

  it "renders new test_hole form" do
    render

    assert_select "form[action=?][method=?]", test_holes_path, "post" do
    end
  end
end
