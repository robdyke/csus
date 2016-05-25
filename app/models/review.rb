class Review < ActiveRecord::Base
  # associations
  belongs_to :system
  belongs_to :user

  # validations
  validates :review_body :review_title, presence: true
end
