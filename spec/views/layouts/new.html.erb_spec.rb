require 'rails_helper'

RSpec.describe "layouts/new", type: :view do
  before(:each) do
    assign(:layout, Layout.new())
  end

  it "renders new layout form" do
    render

    assert_select "form[action=?][method=?]", layouts_path, "post" do
    end
  end
end
