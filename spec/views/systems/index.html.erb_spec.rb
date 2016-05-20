require 'rails_helper'

RSpec.describe "systems/index", type: :view do
  before(:each) do
    assign(:systems, [
      System.create!(),
      System.create!()
    ])
  end

  it "renders a list of systems" do
    render
  end
end
