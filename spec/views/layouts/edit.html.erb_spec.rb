require 'rails_helper'

RSpec.describe "layouts/edit", type: :view do
  before(:each) do
    @layout = assign(:layout, Layout.create!())
  end

  it "renders the edit layout form" do
    render

    assert_select "form[action=?][method=?]", layout_path(@layout), "post" do
    end
  end
end
