require 'rails_helper'

RSpec.describe "sus_scores/new", type: :view do
  before(:each) do
    assign(:sus_score, SusScore.new())
  end

  it "renders new sus_score form" do
    render

    assert_select "form[action=?][method=?]", sus_scores_path, "post" do
    end
  end
end
