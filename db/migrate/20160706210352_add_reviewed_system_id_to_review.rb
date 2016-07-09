class AddReviewedSystemIdToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :system, index: true, foreign_key: true
  end
end
