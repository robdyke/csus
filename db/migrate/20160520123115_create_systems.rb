class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.text :system_name

      t.timestamps null: false
    end
  end
end
