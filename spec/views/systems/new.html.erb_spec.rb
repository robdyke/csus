require 'rails_helper'

RSpec.describe "systems/new", type: :view do
  before(:each) do
    assign(:system, System.new(system_name: "test system 1"))
  end

  it "renders new system form" do
    skip
    render

    assert_select "form[action=?][method=?]", system_path, "post" do
    end
  end
end
