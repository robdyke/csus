require 'rails_helper'

RSpec.describe "sus_scores/edit", type: :view do
  before(:each) do
    @sus_score = assign(:sus_score, SusScore.create!())
  end

  it "renders the edit sus_score form" do
    render

    assert_select "form[action=?][method=?]", sus_score_path(@sus_score), "post" do
    end
  end
end
