require 'rails_helper'

RSpec.describe "test_holes/edit", type: :view do
  before(:each) do
    @test_hole = assign(:test_hole, TestHole.create!())
  end

  it "renders the edit test_hole form" do
    render

    assert_select "form[action=?][method=?]", test_hole_path(@test_hole), "post" do
    end
  end
end
