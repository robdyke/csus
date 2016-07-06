class HarmoniseReviewWithCsusSurveyResults < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.text :trust_type
      t.text :trust_name
      t.integer :trust_id, index: true, foreign_key: true
      t.text :system_name
      t.integer :csus_response_id
    end
  end
end
