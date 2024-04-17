require 'rails_helper'

RSpec.describe "technologies/index", type: :view do
  before(:each) do
    assign(:technologies, [
      Technology.create!(),
      Technology.create!()
    ])
  end

  it "renders a list of technologies" do
    render
  end
end
