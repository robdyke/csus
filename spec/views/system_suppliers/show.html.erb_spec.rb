require 'rails_helper'

RSpec.describe "system_suppliers/show", type: :view do
  before(:each) do
    @system_supplier = assign(:system_supplier, SystemSupplier.create!(
      :supplier_name => "MyText",
      :supplier_primary_phone => "MyText",
      :supplier_email => "MyText",
      :supplier_website_url => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
