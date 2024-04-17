require 'rails_helper'

RSpec.describe "test_holes/index", type: :view do
  before(:each) do
    assign(:test_holes, [
      TestHole.create!(),
      TestHole.create!()
    ])
  end

  it "renders a list of test_holes" do
    render
  end
end
