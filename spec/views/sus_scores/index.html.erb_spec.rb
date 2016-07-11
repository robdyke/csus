require 'rails_helper'

RSpec.describe "sus_scores/index", type: :view do
  before(:each) do
    assign(:sus_scores, [
      SusScore.create!(),
      SusScore.create!()
    ])
  end

  it "renders a list of sus_scores" do
    render
  end
end
