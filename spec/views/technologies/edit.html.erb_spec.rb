require 'rails_helper'

RSpec.describe "technologies/edit", type: :view do
  before(:each) do
    @technology = assign(:technology, Technology.create!())
  end

  it "renders the edit technology form" do
    render

    assert_select "form[action=?][method=?]", technology_path(@technology), "post" do
    end
  end
end
