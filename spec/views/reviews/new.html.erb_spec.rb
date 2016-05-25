require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :review_title => "MyText",
      :review_body => "MyText",
      :sus_score => "9.99",
      :csus_score => "9.99",
      :star_rating => 1
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "textarea#review_review_title[name=?]", "review[review_title]"

      assert_select "textarea#review_review_body[name=?]", "review[review_body]"

      assert_select "input#review_sus_score[name=?]", "review[sus_score]"

      assert_select "input#review_csus_score[name=?]", "review[csus_score]"

      assert_select "input#review_star_rating[name=?]", "review[star_rating]"
    end
  end
end
