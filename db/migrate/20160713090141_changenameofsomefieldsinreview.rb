class Changenameofsomefieldsinreview < ActiveRecord::Migration
  def change
    rename_column :reviews, :sus_score, :sus_score_placeholder
    rename_column :reviews, :csus_score, :csus_score_placeholder
  end
end
