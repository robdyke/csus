require 'rails_helper'

RSpec.describe "systems/new", type: :view do
  before(:each) do
    assign(:system, System.new())
  end

  it "renders new system form" do
    render

    assert_select "form[action=?][method=?]", systems_path, "post" do
    end
  end
end
