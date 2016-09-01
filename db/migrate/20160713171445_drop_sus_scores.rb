class DropSusScores < ActiveRecord::Migration
  def change
    drop_table :sus_scores
  end
end
