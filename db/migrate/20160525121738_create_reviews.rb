class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :review_title
      t.text :review_body
      t.decimal :sus_score
      t.decimal :csus_score
      t.integer :star_rating

      t.timestamps null: false
    end
  end
end
