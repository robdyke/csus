require 'rails_helper'


RSpec.describe "systems/index", type: :view do
#maybe I'm missing something but RSpec should not need to create a system in order to view the systems in the DB
=begin
  before(:each) do
    assign(:systems, [
      System.create!(),
      System.create!()
    ])
  end
=end

  it "renders a list of systems" do
    skip
    render
  end
end
