class ChangeReviewBodyToSomethingMoreDescriptive < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.rename :review_body, :review_positive_text
      t.text :review_negative_text
    end
  end
end
