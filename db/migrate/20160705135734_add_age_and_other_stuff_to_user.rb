class AddAgeAndOtherStuffToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :user_age
      t.datetime :user_date_of_birth
      t.references :trust
    end
  end
end
