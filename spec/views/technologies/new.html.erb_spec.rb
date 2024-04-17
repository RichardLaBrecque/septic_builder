require 'rails_helper'

RSpec.describe "technologies/new", type: :view do
  before(:each) do
    assign(:technology, Technology.new())
  end

  it "renders new technology form" do
    render

    assert_select "form[action=?][method=?]", technologies_path, "post" do
    end
  end
end
