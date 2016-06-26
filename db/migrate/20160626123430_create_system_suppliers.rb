class CreateSystemSuppliers < ActiveRecord::Migration
  def change
    create_table :system_suppliers do |t|
      t.text :supplier_name
      t.text :supplier_primary_phone
      t.text :supplier_email
      t.text :supplier_website_url

      t.timestamps null: false
    end
  end
end
