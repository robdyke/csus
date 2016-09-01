class AddUserCategoryToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :user_category, :text
  end
end
