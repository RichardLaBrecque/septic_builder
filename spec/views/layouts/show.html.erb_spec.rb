require 'rails_helper'

RSpec.describe "layouts/show", type: :view do
  before(:each) do
    @layout = assign(:layout, Layout.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
