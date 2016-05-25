require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :review_title => "MyText",
        :review_body => "MyText",
        :sus_score => "9.99",
        :csus_score => "9.99",
        :star_rating => 1
      ),
      Review.create!(
        :review_title => "MyText",
        :review_body => "MyText",
        :sus_score => "9.99",
        :csus_score => "9.99",
        :star_rating => 1
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
