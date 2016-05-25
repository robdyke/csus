class CreateTrusts < ActiveRecord::Migration
  def change
    create_table :trusts do |t|
      t.text :trust_name
      t.string :nhs_code
      t.string :trust_post_code
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
