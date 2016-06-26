class Review < ActiveRecord::Base
  # associations
  belongs_to :system
  belongs_to :user

  # validations
  validates :review_body, presence: true
  validates :review_title, presence: true
  validates :sus_score, numericality: {
    greater_than_or_equal_to: 2.5,
    less_than_or_equal_to: 100 } #lowest possible SUS score = 1 * 2.5, highest possible SUS score = 40 * 2.5
  validates :csus_score, numericality: { greater_than_or_equal_to: 2.5 } #lowest possible cSUS score = 1 * 2.5
end
