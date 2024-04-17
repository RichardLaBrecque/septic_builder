require 'rails_helper'

RSpec.describe "test_holes/show", type: :view do
  before(:each) do
    @test_hole = assign(:test_hole, TestHole.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
