require 'rails_helper'

RSpec.describe "systems/edit", type: :view do
  before(:each) do
    @system = assign(:system, System.create!(system_name: "test system 1"))
  end

  it "renders the edit system form" do
    skip
    render

    assert_select "form[action=?][method=?]", edit_system_path(@system), "post" do
    end
  end
end
