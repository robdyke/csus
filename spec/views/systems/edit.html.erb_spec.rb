require 'rails_helper'

RSpec.describe "systems/edit", type: :view do
  before(:each) do
    @system = assign(:system, System.create!())
  end

  it "renders the edit system form" do
    render

    assert_select "form[action=?][method=?]", system_path(@system), "post" do
    end
  end
end
