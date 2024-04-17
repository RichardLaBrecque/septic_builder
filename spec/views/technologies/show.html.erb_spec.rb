require 'rails_helper'

RSpec.describe "technologies/show", type: :view do
  before(:each) do
    @technology = assign(:technology, Technology.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
