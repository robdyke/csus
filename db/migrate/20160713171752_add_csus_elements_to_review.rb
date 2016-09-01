class AddCsusElementsToReview < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.integer :reduces_the_risk_of_clinical_error
      t.integer :support_is_hard_to_access
      t.integer :improves_quality_clinical_care
      t.integer :consultation_adversely_affected
      t.integer :gives_me_key_information_needed
      t.integer :total_csus_score
    end
  end
end
