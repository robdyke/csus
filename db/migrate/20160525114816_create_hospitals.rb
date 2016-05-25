class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.text :hospital_name
      t.string :hospital_post_code
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
