require 'rails_helper'

RSpec.describe "system_suppliers/index", type: :view do
  before(:each) do
    assign(:system_suppliers, [
      SystemSupplier.create!(
        :supplier_name => "MyText",
        :supplier_primary_phone => "MyText",
        :supplier_email => "MyText",
        :supplier_website_url => "MyText"
      ),
      SystemSupplier.create!(
        :supplier_name => "MyText",
        :supplier_primary_phone => "MyText",
        :supplier_email => "MyText",
        :supplier_website_url => "MyText"
      )
    ])
  end

  it "renders a list of system_suppliers" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
