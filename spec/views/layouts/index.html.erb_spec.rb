require 'rails_helper'

RSpec.describe "layouts/index", type: :view do
  before(:each) do
    assign(:layouts, [
      Layout.create!(),
      Layout.create!()
    ])
  end

  it "renders a list of layouts" do
    render
  end
end
