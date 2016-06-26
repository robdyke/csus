require 'rails_helper'

RSpec.describe "system_suppliers/edit", type: :view do
  before(:each) do
    @system_supplier = assign(:system_supplier, SystemSupplier.create!(
      :supplier_name => "MyText",
      :supplier_primary_phone => "MyText",
      :supplier_email => "MyText",
      :supplier_website_url => "MyText"
    ))
  end

  it "renders the edit system_supplier form" do
    render

    assert_select "form[action=?][method=?]", system_supplier_path(@system_supplier), "post" do

      assert_select "textarea#system_supplier_supplier_name[name=?]", "system_supplier[supplier_name]"

      assert_select "textarea#system_supplier_supplier_primary_phone[name=?]", "system_supplier[supplier_primary_phone]"

      assert_select "textarea#system_supplier_supplier_email[name=?]", "system_supplier[supplier_email]"

      assert_select "textarea#system_supplier_supplier_website_url[name=?]", "system_supplier[supplier_website_url]"
    end
  end
end
