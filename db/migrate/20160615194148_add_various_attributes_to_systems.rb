class AddVariousAttributesToSystems < ActiveRecord::Migration
  def change
    add_column :systems, :system_type, :text
    add_column :systems, :system_main_web_url, :text
    add_column :systems, :system_user_group_url, :text
    add_column :systems, :system_sales_discontinued, :boolean, default: false
  end
end
