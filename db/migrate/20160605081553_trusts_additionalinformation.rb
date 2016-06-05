class TrustsAdditionalinformation < ActiveRecord::Migration
  def change
    add_column :trusts, :trust_number, :integer
    add_column :trusts, :trust_legal_name, :text
    add_column :trusts, :trust_display_name, :text
    add_column :trusts, :trust_type, :text
    add_column :trusts, :trust_region, :text
    add_column :trusts, :trust_date_of_establishment, :date
    add_column :trusts, :trust_main_phone, :string
    add_column :trusts, :trust_hq_address_line_1, :text
    add_column :trusts, :trust_hq_address_line_2, :text
    add_column :trusts, :trust_hq_address_line_3, :text
    add_column :trusts, :trust_hq_address_line_4, :text
    add_column :trusts, :trust_postcode, :text
    add_column :trusts, :trust_country, :text
    add_column :trusts, :trust_website_url, :text
    add_column :trusts, :trust_email_pattern, :text
    add_column :trusts, :trust_nhs_code, :text
  end
end
