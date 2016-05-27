require 'rails_helper'

RSpec.describe "systems/show", type: :view do
  before(:each) do
    @system = assign(:system, System.create!(system_name: "test system 1"))
  end

  it "renders attributes in <p>" do
    skip
    render
  end
end
