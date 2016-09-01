require 'rails_helper'

RSpec.describe "sus_scores/show", type: :view do
  before(:each) do
    @sus_score = assign(:sus_score, SusScore.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
