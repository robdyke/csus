require 'rails_helper'

RSpec.describe "system_suppliers/new", type: :view do
  before(:each) do
    assign(:system_supplier, SystemSupplier.new(
      :supplier_name => "MyText",
      :supplier_primary_phone => "MyText",
      :supplier_email => "MyText",
      :supplier_website_url => "MyText"
    ))
  end

  it "renders new system_supplier form" do
    render

    assert_select "form[action=?][method=?]", system_suppliers_path, "post" do

      assert_select "textarea#system_supplier_supplier_name[name=?]", "system_supplier[supplier_name]"

      assert_select "textarea#system_supplier_supplier_primary_phone[name=?]", "system_supplier[supplier_primary_phone]"

      assert_select "textarea#system_supplier_supplier_email[name=?]", "system_supplier[supplier_email]"

      assert_select "textarea#system_supplier_supplier_website_url[name=?]", "system_supplier[supplier_website_url]"
    end
  end
end
